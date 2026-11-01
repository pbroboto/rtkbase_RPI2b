#!/bin/bash
# Restore system files to RPi2B
HOST=rpi2b
DIR=$(dirname $0)

scp $DIR/70-wifi.rules $HOST:/tmp/
scp $DIR/99-ttyAMA0.rules $HOST:/tmp/
scp $DIR/hostapd_ap.conf $HOST:/tmp/
scp $DIR/ap.conf $HOST:/tmp/
scp $DIR/start_dual_wifi.sh $HOST:/tmp/
scp $DIR/str2str_tcp.service $HOST:/tmp/
scp $DIR/dual-wifi.service $HOST:/tmp/
scp $DIR/ttyAMA0-permissions.service $HOST:/tmp/
scp $DIR/blacklist-rtl8xxxu.conf $HOST:/tmp/
scp $DIR/blacklist-r8188eu.conf $HOST:/tmp/
scp $DIR/armbian.yaml $HOST:/tmp/

ssh $HOST 'sudo cp /tmp/70-wifi.rules /etc/udev/rules.d/
sudo cp /tmp/99-ttyAMA0.rules /etc/udev/rules.d/
sudo cp /tmp/hostapd_ap.conf /etc/hostapd/
sudo cp /tmp/ap.conf /etc/dnsmasq.d/
sudo cp /tmp/start_dual_wifi.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/start_dual_wifi.sh
sudo cp /tmp/str2str_tcp.service /etc/systemd/system/
sudo cp /tmp/dual-wifi.service /etc/systemd/system/
sudo cp /tmp/ttyAMA0-permissions.service /etc/systemd/system/
sudo cp /tmp/blacklist-rtl8xxxw.conf /etc/modprobe.d/
sudo cp /tmp/blacklist-r8188eu.conf /etc/modprobe.d/
sudo cp /tmp/armbian.yaml /etc/netplan/
sudo chmod 600 /etc/netplan/armbian.yaml
sudo systemctl daemon-reload
sudo netplan apply
sudo systemctl restart str2str_tcp dual-wifi'

echo "Restore complete!"
