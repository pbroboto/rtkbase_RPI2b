# RTKBase V3 for Raspberry Pi 2 Model B

A permanent GNSS base station built on a Raspberry Pi 2 Model B and a Unicore UM980 receiver.
It is a customised fork of [Stefal/RTKBase](https://github.com/Stefal/rtkbase) (v2.7.0),
adapted for the Pi 2B and extended with PPK logging, a dual WiFi access point, status LEDs and fan control.

The station streams RTCM3 corrections to an NTRIP caster, logs raw data for post-processing,
and is managed from a web interface.

<img src="https://i0.wp.com/www.priabroy.name/wp-content/uploads/2026/04/651914-1024x768.jpg?ssl=1" alt="The finished RPi2B + UM980 base station" width="600"/>

The full build story, with photos, wiring notes, screenshots and costs (in Thai), is on my blog:
[DIY RTK Base Station V3.21 with Raspberry Pi 2B + UM980](https://www.priabroy.name/archives/13317).

| Auto Base | GNSS Logs | PPK Logs | NTRIP caster |
|---|---|---|---|
| <img src="https://i0.wp.com/www.priabroy.name/wp-content/uploads/2026/04/651422.jpg?resize=461%2C1024&ssl=1" width="160"/> | <img src="https://i0.wp.com/www.priabroy.name/wp-content/uploads/2026/04/651384.jpg?resize=461%2C1024&ssl=1" width="160"/> | <img src="https://i0.wp.com/www.priabroy.name/wp-content/uploads/2026/04/651417.jpg?resize=461%2C1024&ssl=1" width="160"/> | <img src="https://i0.wp.com/www.priabroy.name/wp-content/uploads/2026/04/651909.jpg?resize=461%2C1024&ssl=1" width="160"/> |

## What is different from upstream RTKBase

- **Raspberry Pi 2B / Raspberry Pi OS Bookworm** support (ARMv7, `ttyAMA0` UART, RTKLIB 2.5.0 armv7l binaries).
- **UM980 auto-configuration** on every start of `str2str_tcp` (`ExecStartPre`), so a power cycle no longer needs a manual "Detect/Configure".
- **Base position injection**: `tools/set_um980_base_position.py` converts the configured Lat/Lon/H to ECEF and sends `MODE BASE X Y Z` to the receiver.
- **PPK Logs** page (renamed from "Logs") and a new **GNSS Logs** page: start/stop raw UM980 OBSVM logging and download `.obs` files for RINEX/PPP processing.
- **Dual WiFi**: one USB adapter as WiFi client, a second as a local access point for field access (`tools/install_dual_wifi.sh`).
- **Traffic-light status LEDs** (`tools/rtkbase_leds.py`): power, GNSS data, internet + NTRIP.
- **Fan control** (`tools/fan_control.py`): GPIO-switched fan with temperature hysteresis.
- Fixes for UART permissions after reboot, Tailscale routing and service start ordering.

## Hardware

| Part | Notes |
|---|---|
| Board | Raspberry Pi 2 Model B Rev 1.1 |
| OS | Raspberry Pi OS Bookworm Lite (armhf) |
| GNSS receiver | Unicore UM980, UART on the GPIO header (COM3 / `ttyAMA0`) |
| Raw logging | UM980 COM1 over a data-only USB cable (`ttyUSB0`) |
| WiFi | 2 x RTL8188EUS/ETV USB adapters (patched driver in `rtl8188eus/`) |
| Storage | USB drive, ext4, mounted at `/mnt/rtkdata` |
| Extras | Traffic-light LED module, 5V fan with NPN transistor driver |

## Installation

The full step-by-step guide, including every fix found during the build, is in
[RPi2B_DEVELOPMENT.md](RPi2B_DEVELOPMENT.md).

In short: flash Bookworm Lite, enable the UART (`dtoverlay=disable-bt`), install dependencies,
restore this repository to `/home/rtkbase/rtkbase`, create the Python venv, install the RTKLIB
binaries, install the systemd services, and set `com_port='ttyAMA0'` in `settings.conf`.

Other documents:

- [V3_DEVELOPMENT.md](V3_DEVELOPMENT.md): architecture of the V3 services and the custom tools.
- [CHANGELOG.md](CHANGELOG.md): upstream RTKBase changelog.

## First run

1. Open `http://<pi-address>` (or `http://10.0.0.1` when connected to the station's own WiFi access point).
2. The default web password is `admin`. **Change it** under Settings, especially if the unit is reachable from other networks.
3. Enter the base coordinates, NTRIP caster address, mountpoint and password in Settings → Main service.
4. Set your own access point password in `/etc/hostapd/hostapd_ap.conf` (the repository ships a `CHANGE_ME_AP_PASSWORD` placeholder).

## Security notes

- `settings.conf` holds NTRIP credentials and is excluded from the repository. Never commit it.
- Do not commit SSH keys. Use your own key pair and keep it outside the repository.

## Credits and license

Based on [RTKBase](https://github.com/Stefal/rtkbase) by Stéphane Péneau (Stefal) and contributors,
which builds on [RTKLIB-EX](https://github.com/rtklibexplorer/RTKLIB), [ReachView](https://github.com/emlid/ReachView),
Flask, Flask-SocketIO, Bootstrap and others. The patched WiFi driver in `rtl8188eus/` comes from
[aircrack-ng/rtl8188eus](https://github.com/aircrack-ng/rtl8188eus).

Licensed under the GNU AGPL v3, the same as upstream. See [LICENSE](LICENSE).
