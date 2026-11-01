#!/bin/bash
# Auto-detect USB WiFi interface at boot time
# WIFI_IF=$(ip link show | grep -oP '(?<=\d: )wlx\w+' | head -1)
USB_WIFI=wlan_ap

# Kill any existing hostapd
killall hostapd 2>/dev/null || true
sleep 1

# if [ -z "$WIFI_IF" ]; then
if [ -z "$USB_WIFI" ]; then
    echo "ERROR: USB WiFi interface not found!"
    exit 1
fi

# Set static IP
ip addr flush dev $USB_WIFI
ip addr add 10.0.0.1/24 dev $USB_WIFI
ip link set $USB_WIFI up

# Start hostapd
hostapd -B /etc/hostapd/hostapd_ap.conf

# Enable forwarding
sysctl -w net.ipv4.ip_forward=1

# Setup NAT
if ip link show wlan_client | grep -q "state UP"; then
    iptables -t nat -F
    iptables -F FORWARD
    iptables -t nat -A POSTROUTING -o wlan_client -j MASQUERADE
    iptables -A FORWARD -i $USB_WIFI -o wlan_client -j ACCEPT
    iptables -A FORWARD -i wlan_client -o $USB_WIFI -m state --state RELATED,ESTABLISHED -j ACCEPT
fi

systemctl start dnsmasq

