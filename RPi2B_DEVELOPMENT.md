# RPi2B Development Log — RTKBase V3

## Overview
RPi2B is the permanent office RTKBase unit running ROY_RTK_STATION.
Replaced dead RPi3B+ (killed by dual 5V incident Apr 2, 2026).

## Hardware
- **Board:** Raspberry Pi 2 Model B Rev 1.1 (BCM2836, ARMv7)
- **OS:** Raspberry Pi OS Bookworm Lite (2025-11-24, kernel 6.12.75+rpt-rpi-v7)
- **RAM:** 921MB
- **UM980:** Unit A (R4.10Build11833) — JST connector (COM3=ttyAMA0)
- **USB WiFi 1:** RTL8188EUS wlan0 — WiFi client (GNSS-CORSX)
- **USB WiFi 2:** RTL8188ETV wlan1 — WiFi AP (RTKBase-V3)
- **USB Storage:** Lexar 16GB ext4 UUID=fde57931-4bd9-4db3-8c19-5fef6b4989b7
- **USB-C cable:** Data-only (VBUS red wire cut) for UM980 COM1 OBSVM

## Network
- **Local IP:** <RPI2B_LAN_IP>
- **Tailscale IP:** <RPI2B_TAILSCALE_IP>
- **Mount point:** ROY_RTK_STATION (DigitalOcean <CASTER_IP>:2101)
- **WiFi AP SSID:** RTKBase-V3 / Password: <set your own AP password>
- **AP URL:** http://10.0.0.1

---

## Completed Status (Apr 4, 2026)

- ✅ Raspberry Pi OS Bookworm installed (SD card)
- ✅ Tailscale connected (<RPI2B_TAILSCALE_IP>) key expiry disabled
- ✅ RTKBase V2.7.0 restored from RPi3b+ backup
- ✅ Python venv with --system-site-packages
- ✅ str2str/rtkrcv/convbin RTKLIB 2.5.0 armv7l installed
- ✅ All services enabled and running
- ✅ UART configured (dtoverlay=disable-bt in /boot/firmware/config.txt)
- ✅ Lexar 16GB ext4 mounted at /mnt/rtkdata (fstab UUID)
- ✅ ppk_logs/ and gnss_logs/ directories created
- ✅ RTL8188EU patched driver compiled (AP mode support)
- ✅ Kernel locked at 6.12.75 (apt-mark hold)
- ✅ Dual WiFi AP working (hostapd + dnsmasq)
- ✅ netplan.io installed with armbian.yaml (NetworkManager renderer)
- ✅ WiFi client connected via web UI
- ✅ Barchart + Skyplot working (TCP stream fix)
- ✅ NTRIP streaming ROY_RTK_STATION
- ✅ ExecStartPre auto-configure UM980
- ✅ PPK Logs page working
- ✅ GNSS Logs page working (Start/Stop/Download .obs files)
- ✅ UM980 COM1 USB-C OBSVM data flowing on ttyUSB0

---

## Installation Steps (Fresh Install)

### Step 1 — Flash Bookworm to SD card
On Manjaro:
```bash
xz -dc ~/Downloads/2025-11-24-raspios-bookworm-armhf-lite.img.xz | \
    sudo dd of=/dev/sdX bs=4M status=progress
sync
sudo mount /dev/sdX1 /mnt/rpiboot
HASH=$(echo 'raspberry' | openssl passwd -6 -stdin)
echo "pi:$HASH" | sudo tee /mnt/rpiboot/userconf.txt
sudo touch /mnt/rpiboot/ssh
sudo umount /mnt/rpiboot
```
Default login: pi / raspberry

### Step 2 — First boot setup
```bash
passwd
sudo useradd -m -s /bin/bash rtkbase
sudo usermod -aG sudo,dialout,tty,adm,systemd-journal rtkbase
sudo passwd rtkbase
```

### Step 3 — Configure UART
```bash
echo "dtoverlay=disable-bt" | sudo tee -a /boot/firmware/config.txt
sudo reboot
```

### Step 4 — Install Tailscale
```bash
curl -fsSL https://tailscale.com/install.sh | sh
echo 'net.ipv4.ip_forward = 1' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
sudo tailscale up --advertise-routes=192.168.0.0/24 --accept-routes
```
Authenticate via URL shown. Then in Tailscale admin disable key expiry.

### Step 5 — Set WiFi country
```bash
sudo raspi-config nonint do_wifi_country TH
sudo rfkill unblock all
```

### Step 6 — Install dependencies
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3-pip python3-venv git python3-serial \
    socat unzip zip bc ntp ntpdate gpsd \
    python3-pyproj libproj-dev proj-bin \
    hostapd dnsmasq netplan.io dkms
```

### Step 7 — Restore RTKBase from backup
From Manjaro:
```bash
rsync -av --exclude='venv' --exclude='*.log' \
    ~/dev/rtkbase_backup_RPi2b/ \
    rtkbase@<RPI2B_TAILSCALE_IP>:/home/rtkbase/rtkbase/
sudo chown -R rtkbase:rtkbase /home/rtkbase/rtkbase
```

### Step 8 — Python venv
```bash
cd /home/rtkbase/rtkbase
sed -i 's/pyproj==3.7.2/pyproj==3.4.1/' web_app/requirements.txt
python3 -m venv venv --system-site-packages
venv/bin/pip install setuptools
venv/bin/pip install -r web_app/requirements.txt
```

### Step 9 — Install binaries
```bash
sudo cp tools/bin/RTKLIB-2.5.0/armv7l/str2str /usr/local/bin/
sudo cp tools/bin/RTKLIB-2.5.0/armv7l/rtkrcv /usr/local/bin/
sudo cp tools/bin/RTKLIB-2.5.0/armv7l/convbin /usr/local/bin/
sudo chmod +x /usr/local/bin/str2str /usr/local/bin/rtkrcv /usr/local/bin/convbin
```

### Step 10 — Fix /etc/environment
```bash
grep -q "rtkbase_path" /etc/environment || \
    echo "rtkbase_path=/home/rtkbase/rtkbase" | sudo tee -a /etc/environment
```

### Step 11 — Fix settings.conf
```bash
sed -i "s/com_port='ttyS1'/com_port='ttyAMA0'/" /home/rtkbase/rtkbase/settings.conf
sed -i "s|datadir='/mnt/rtkdata'|datadir='/mnt/rtkdata/ppk_logs'|" /home/rtkbase/rtkbase/settings.conf
```
Add gnss keys to [local_storage] section if missing:
### Fix 13 — ttyAMA0 permissions persistent after reboot
Root cause: Raspberry Pi OS enables serial-getty@ttyAMA0 by default.
This service holds exclusive access to ttyAMA0 and resets permissions on every boot.
```bash
# Step 1 — Mask serial-getty permanently
sudo systemctl disable serial-getty@ttyAMA0
sudo systemctl mask serial-getty@ttyAMA0
sudo systemctl stop serial-getty@ttyAMA0

# Step 2 — Install acl package
sudo apt install -y acl

# Step 3 — udev rule with setfacl to fix ACL mask
sudo tee /etc/udev/rules.d/99-ttyAMA0.rules << 'EOF'
KERNEL=="ttyAMA0", GROUP="tty", MODE="0660", RUN+="/usr/bin/setfacl -m g:tty:rw,m::rw /dev/ttyAMA0"
EOF
sudo udevadm control --reload-rules
```

Note: Simple chmod/udev MODE rules do NOT work for ttyAMA0 on RPi.
Must use setfacl via udev RUN+= to override the ACL mask.

### Fix 14 — tcp_host_addr reset by configure-gnss
Root cause: ExecStartPre configure-gnss rewrites settings.conf including
tcp_host_addr back to '127.0.0.1'. str2str cannot bind TCP server to
127.0.0.1 on RPi2B — needs empty string to bind to 0.0.0.0.

Fix: Add sed command after configure-gnss in ExecStartPre:
```ini
ExecStartPre=/bin/bash -c 'source /etc/environment && cd /home/rtkbase/rtkbase && tools/install.sh --user rtkbase --configure-gnss || true && sed -i "s/tcp_host_addr=.*/tcp_host_addr='\'''\''/" /home/rtkbase/rtkbase/settings.conf'
```

### Fix 15 — Stray temp file from sed -i
sed -i creates temp file (e.g. sed9hzMdW) in rtkbase directory.
Safe to delete:
```bash
rm /home/rtkbase/rtkbase/sed*
```
### Fix 17 — Tailscale routing LAN traffic through tailscale0
Root cause: RPi2B was set up with --advertise-routes=192.168.0.0/24
This caused ALL local LAN traffic to route through tailscale0 instead of eth0.
SSH via LAN failed, ping to local devices failed.

Fix — disable subnet routing and route acceptance:
```bash
sudo tailscale up --advertise-routes= --accept-routes=false
```

Note: RPi2B is office unit — no need to advertise subnet routes.
OPZ3 at camp is unaffected by this change.

### Fix 18 — dual-wifi hostapd starts too early
Root cause: wlan_ap not ready when hostapd starts on boot.
Fix — add 10 second delay to dual-wifi.service:
```ini
[Service]
Type=oneshot
ExecStartPre=/bin/sleep 10
ExecStart=/usr/local/bin/start_dual_wifi.sh
RemainAfterExit=yes
```

### Fix 19 — New Claude broke RPi2B
New Claude in separate conversation made changes:
- Added dhcp6: true to netplan armbian.yaml
- Modified udev rules incorrectly
- Caused system freeze and LAN connectivity loss

Recovery steps:
1. Simplify netplan back to ethernet only
2. Flush iptables rules
3. Disable Tailscale subnet routing
4. Add delay to dual-wifi service

Lesson: Always backup before making changes in new conversation!

### Fix 21 — LED Traffic Light Implementation
Hardware wiring:
- Red    → Pin15 (BCM22 = GPIO534 on RPi2B)
- Yellow → Pin16 (BCM23 = GPIO535 on RPi2B)
- Green  → Pin18 (BCM24 = GPIO536 on RPi2B)
- GND    → Pin20

⚠️ RPi2B GPIO offset = 512!
BCM GPIO number + 512 = actual /sys/class/gpio number
Example: BCM22 → GPIO534

Fixes from OPZ3 version:
1. GPIO numbers: 72/79/78 → 534/535/536
2. UART device: /dev/ttyS → /dev/ttyAMA0
3. Mountpoint: PBR_RTK_STATION → ROY_RTK_STATION

Install:
```bash
sudo cp tools/rtkbase_leds.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable rtkbase_leds
sudo systemctl start rtkbase_leds
```

LED behavior:
- Red solid    = System OK
- Yellow solid = GNSS OK (>5000 bps on ttyAMA0)
- Green solid  = Internet + NTRIP OK
- Any blinking = Problem with that system

### Done
- [x] Fan control (25x25mm 5V fan) — working, switches automatically at the temperature thresholds
- [x] Fan circuit: P2N2222A + 330Ω + 1N4007, Pin2 (5V), BCM7 (GPIO519)
- [x] convbin RINEX conversion test — working

### Pending
- [ ] network_infos.py wlan0 → wlan_client update
- [ ] Auto Base survey for office coordinates

### Feature — Fan Control (✅ DONE — hardware installed and working)
Hardware circuit (perfboard):
- P2N2222A NPN transistor
- 330Ω base resistor
- 1N4007 flyback diode
- JST 2.54 2p connectors x2

GPIO wiring:
- Pin25 = GND → perfboard GND
- Pin26 = BCM7 = GPIO519 → perfboard signal

Fan power:
- Fan+ → 5V from USB-C panel mount (via step-up if 12V fan)
- Fan- → P2N2222A Collector (switched)

Temperature thresholds:
- Fan ON  >= 55°C (rolling average 3 readings)
- Fan OFF <  53°C (rolling average 3 readings)
- Check interval: 10 seconds

Service: fan_control.service
Script: tools/fan_control.py

Test fan manually:
echo 1 | sudo tee /sys/class/gpio/gpio519/value  # ON
echo 0 | sudo tee /sys/class/gpio/gpio519/value  # OFF

✅ 25x25mm 5V fan installed; turns on/off automatically at the thresholds above.

### Fix 22 — Wrong timezone (Europe/London → Asia/Bangkok)
Root cause: RPi2B default timezone was Europe/London (BST +0100)
rtkbase_leds.py uses journalctl --since "90 sec ago"
Wrong timezone caused timestamp mismatch → GNSS: NO DATA

Fix:
```bash
sudo timedatectl set-timezone Asia/Bangkok
```

### Fix 23 — LED script hardcoded mountpoint name
Root cause: rtkbase_leds.py hardcoded PBR_RTK_STATION
When sponsor changed mountpoint → Green LED blinks all night!

Fix: read mnt_name_a dynamically from settings.conf:
```python
def get_mnt_name():
    try:
        with open("/home/rtkbase/rtkbase/settings.conf") as f:
            for line in f:
                if line.startswith("mnt_name_a="):
                    return line.strip().split("=")[1].strip("'\"")
    except:
        pass
    return "RTK_STATION"

MNT_NAME_A = get_mnt_name()
```

Then use MNT_NAME_A instead of hardcoded string in check_ntrip_streaming()

---

## Additional Fixes (carried over from the earlier RPi3B+ build)

These apply when restoring the RTKBase backup onto the RPi2B.

### Fix 24 — Wrong serial package (pyserial)
The backup `web_app/requirements.txt` has `serial==0.0.97` (wrong package) →
`module 'serial' has no attribute 'Serial'` when configuring the UM980.
Fix BEFORE Step 8 (pip install):
```bash
sed -i 's/serial==0.0.97/pyserial==3.5/' /home/rtkbase/rtkbase/web_app/requirements.txt
```
If already installed:
```bash
venv/bin/pip uninstall serial -y
venv/bin/pip install pyserial
```

### Fix 25 — Service file placeholders
`unit/` service files contain `{user}` and `{script_path}` that are NOT replaced
automatically. Use the pre-fixed files from `tools/`:
```bash
cd /home/rtkbase/rtkbase/tools
sudo cp str2str_tcp.service str2str_ntrip_A.service str2str_ntrip_B.service \
    str2str_file.service rtkbase_web.service rtkbase_archive.service \
    rtkbase_leds.service /etc/systemd/system/
sudo cp ../unit/rtkbase_archive.timer /etc/systemd/system/
sudo systemctl daemon-reload
```

### Fix 26 — rtkbase_path double nested
If `/etc/environment` has `rtkbase_path=/home/rtkbase/rtkbase/rtkbase`,
`install.sh --configure-gnss` fails with "RtkBase is not installed":
```bash
sudo sed -i 's|rtkbase_path=/home/rtkbase/rtkbase/rtkbase|rtkbase_path=/home/rtkbase/rtkbase|' /etc/environment
```

### Fix 27 — install.sh UART scan list
Original scan list includes ttyUSB*, so a USB-serial adapter (e.g. CP2102) can be
detected as the UM980. Restrict it:
```bash
sed -i 's/for port in ttyS0 ttyUSB0 ttyUSB1 ttyUSB2 serial0 ttyS1 ttyS2 ttyS3 ttyS4 ttyS5/for port in ttyS0 serial0 ttyAMA0/' /home/rtkbase/rtkbase/tools/install.sh
```

### Fix 28 — rtkbase_raw2nmea.service (legacy Emlid M2)
Hardcoded to an old Emlid M2 address. Point it at the local RTCM3 stream and serve NMEA on 5014:
```bash
sudo tee /etc/systemd/system/rtkbase_raw2nmea.service << 'EOT'
[Unit]
Description=RTKBase - Convert Gnss Raw data to nmea output on tcp
After=str2str_tcp.service
[Service]
Type=simple
User=root
ExecStart=/usr/local/bin/str2str -in tcpcli://localhost:5015#rtcm3 -out tcpsvr://:5014#nmea
Restart=on-failure
RestartSec=30
[Install]
WantedBy=multi-user.target
EOT
sudo systemctl daemon-reload
sudo systemctl enable --now rtkbase_raw2nmea
```

### Fix 29 — Skyplot com_port hardcoded
`/api/satellites` in `server.py` was hardcoded to `/dev/ttyS1`; it must read
`com_port` from `settings.conf` (already applied in the backup).

### Backup restore path
The backup has a nested `rtkbase/` subdirectory. Use `.../rtkbase_backup/rtkbase/` as the rsync
source, not the parent, or you get `rtkbase/rtkbase/`.
