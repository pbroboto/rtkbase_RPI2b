#!/bin/bash
################################################################################
# RTKBase Dual WiFi Setup - Quick version (driver already loaded)
################################################################################
set -e
echo "RTKBase Dual WiFi Setup for OPZ3"
echo "================================="

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root: sudo bash $0"
    exit 1
fi

# Detect WiFi interfaces
BUILTIN_WIFI="wlan0"

# Auto-detect USB WiFi interface (any wlx* interface that is not wlan0)
USB_WIFI=wlan1

if [ -z "$USB_WIFI" ]; then
    echo "ERROR: USB WiFi interface not found!"
    echo "Please plug in USB WiFi dongle and try again."
    exit 1
fi

echo "Built-in WiFi: $BUILTIN_WIFI"
echo "USB WiFi: $USB_WIFI"

# Install dependencies
echo "Installing packages..."
apt update
apt install -y hostapd dnsmasq iptables-persistent

# Configure hostapd
echo "Configuring Access Point..."
cat > /etc/hostapd/hostapd_ap.conf <<EOF
interface=$USB_WIFI
driver=nl80211
ssid=RTKBase-V3
hw_mode=g
channel=6
wmm_enabled=0
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0
wpa=2
wpa_passphrase=CHANGE_ME_AP_PASSWORD
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
EOF

# Configure dnsmasq
echo "Configuring DHCP..."
cat > /etc/dnsmasq.d/ap.conf <<EOF
interface=$USB_WIFI
dhcp-range=10.0.0.10,10.0.0.100,255.255.255.0,24h
domain=rtkbase.local
address=/rtkbase.local/10.0.0.1
port=0
EOF

# Create startup script — auto-detects interface at boot time
cat > /usr/local/bin/start_dual_wifi.sh <<'SCRIPT'
#!/bin/bash
# Auto-detect USB WiFi interface at boot time
# WIFI_IF=$(ip link show | grep -oP '(?<=\d: )wlx\w+' | head -1)
USB_WIFI=wlan1
if [ -z "$WIFI_IF" ]; then
    echo "ERROR: USB WiFi interface not found!"
    exit 1
fi

# Set static IP
ip addr flush dev \$WIFI_IF
ip addr add 10.0.0.1/24 dev \$WIFI_IF
ip link set \$WIFI_IF up

# Start hostapd
hostapd -B /etc/hostapd/hostapd_ap.conf

# Enable forwarding
sysctl -w net.ipv4.ip_forward=1

# Setup NAT
if ip link show wlan0 | grep -q "state UP"; then
    iptables -t nat -F
    iptables -F FORWARD
    iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
    iptables -A FORWARD -i \$WIFI_IF -o wlan0 -j ACCEPT
    iptables -A FORWARD -i wlan0 -o \$WIFI_IF -m state --state RELATED,ESTABLISHED -j ACCEPT
fi

systemctl start dnsmasq
SCRIPT
chmod +x /usr/local/bin/start_dual_wifi.sh

# Create service
cat > /etc/systemd/system/dual-wifi.service <<'EOF'
[Unit]
Description=RTKBase Dual WiFi - Access Point
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/start_dual_wifi.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable dual-wifi.service

# Enable IP forwarding permanently
if ! grep -q "net.ipv4.ip_forward=1" /etc/sysctl.conf; then
    echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
fi

echo ""
echo "✓ Installation Complete!"
echo ""
echo "Start service: sudo systemctl start dual-wifi"
echo "Check status:  sudo systemctl status dual-wifi"
echo ""
echo "AP: RTKBase-V3 / Password: CHANGE_ME_AP_PASSWORD (edit hostapd_ap.conf)"
echo "URL: http://10.0.0.1"
