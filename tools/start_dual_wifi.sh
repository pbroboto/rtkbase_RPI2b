#!/bin/bash
# Auto-detect USB WiFi interface at boot time
WIFI_IF=$(ip link show | grep -oP '(?<=\d: )wlx\w+' | head -1)
if [ -z "$WIFI_IF" ]; then
    echo "ERROR: USB WiFi interface not found!"
    exit 1
fi

# Set static IP
ip addr flush dev $WIFI_IF
ip addr add 10.0.0.1/24 dev $WIFI_IF
ip link set $WIFI_IF up

# Update hostapd config with current interface and MAC postfix
MAC=$(cat /sys/class/net/$WIFI_IF/address | tr -d : | tail -c 5)
sed -i "s|^interface=.*|interface=$WIFI_IF|" /etc/hostapd/hostapd_ap.conf
sed -i "s|^ssid=.*|ssid=RTKBase-V3-OPZ3-$MAC|" /etc/hostapd/hostapd_ap.conf

# Start hostapd
hostapd -B /etc/hostapd/hostapd_ap.conf

# Enable forwarding
sysctl -w net.ipv4.ip_forward=1

# Setup NAT
if ip link show wlan0 | grep -q "state UP"; then
    iptables -t nat -F
    iptables -F FORWARD
    iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
    iptables -A FORWARD -i $WIFI_IF -o wlan0 -j ACCEPT
    iptables -A FORWARD -i wlan0 -o $WIFI_IF -m state --state RELATED,ESTABLISHED -j ACCEPT
fi

systemctl restart dnsmasq
