# V3 RTKBase Development Documentation

## str2str_tcp.service — The Heart of V3

### What it does
This is the **main service** that reads raw GNSS data from UM980 and distributes it to all other services.

### Service file
`/etc/systemd/system/str2str_tcp.service`

```
ExecStart=/home/rtkbase/rtkbase/run_cast.sh in_serial out_tcp
```

### How it starts
1. Calls `run_cast.sh` with arguments `in_serial` and `out_tcp`
2. `run_cast.sh` reads `settings.conf` to get variables:
   - `com_port='ttyS1'` → UM980 serial port
   - `com_port_settings='115200:8:n:1'`
   - `receiver_format='rtcm3'`
   - `tcp_port` → output TCP port for other services to connect
3. Builds `in_serial="serial://ttyS1:115200:8:n:1#rtcm3"`
4. Runs: `str2str -in serial://ttyS1:115200:8:n:1#rtcm3 -out tcpsvr://localhost:{tcp_port}`

### Downstream services (all depend on str2str_tcp)
- `str2str_ntrip_A.service` → reads TCP → streams to NTRIP caster
- `str2str_ntrip_B.service` → reads TCP → streams to second NTRIP caster
- `str2str_file.service` → reads TCP → logs to /mnt/rtkdata

### THE ROOT PROBLEM — UM980 Auto-Configure
**str2str_tcp.service has NO ExecStartPre to configure UM980.**

After power cycle or moving to new location:
- UM980 may lose RTCM3 output configuration
- str2str_tcp starts but gets no valid RTCM3 data
- All downstream services (NTRIP A/B) get nothing → barchart blank

**Current workaround:** User manually clicks "Detect/Configure" in RTKBase web UI
- This triggers `configure_receiver` socket event in `server.py` (line 811)
- Which runs: `install.sh --user rtkbase --configure-gnss`
- Which calls the unicore python tools to reconfigure UM980

**Required fix:** Add `ExecStartPre` to `str2str_tcp.service` that runs configure before starting

---

## Key Files Reference

### Services
| Service | File | What it does |
|---|---|---|
| str2str_tcp | `/etc/systemd/system/str2str_tcp.service` | Main: reads UM980 serial → TCP |
| str2str_ntrip_A | `/etc/systemd/system/str2str_ntrip_A.service` | TCP → NTRIP caster A |
| str2str_ntrip_B | `/etc/systemd/system/str2str_ntrip_B.service` | TCP → NTRIP caster B |
| str2str_file | `/etc/systemd/system/str2str_file.service` | TCP → log file on USB |
| rtkbase_web | `/etc/systemd/system/rtkbase_web.service` | Web UI (Flask/Gunicorn) |
| rtkbase_leds | `/etc/systemd/system/rtkbase_leds.service` | Traffic light LED controller |
| rtkbase_archive.timer | `/etc/systemd/system/rtkbase_archive.timer` | Daily log compression at 04:00 |

### Scripts
| Script | Location | What it does |
|---|---|---|
| run_cast.sh | `/home/rtkbase/rtkbase/run_cast.sh` | Core: builds str2str command from settings.conf, handles all output types |
| install.sh | `/home/rtkbase/rtkbase/tools/install.sh` | Setup script, `--configure-gnss` configures UM980 |
| set_um980_base_position.py | `/home/rtkbase/rtkbase/tools/set_um980_base_position.py` | **CUSTOM (Prajuab)** — NOT in original Stefal/RTKBase. Reads position from settings.conf, converts Lat/Lon/H to ECEF, sends MODE BASE X Y Z to UM980 via UnicoGnss. Must be called whenever base coordinates change. |
| unicore_tool.py | `/home/rtkbase/rtkbase/tools/unicore_tool.py` | CLI tool to interact with UM980 |
| rtkbase_leds.py | `/home/rtkbase/rtkbase/tools/rtkbase_leds.py` | LED traffic light logic |

### Python Libraries (UM980 communication)
| File | Location | What it does |
|---|---|---|
| unicore_cmd.py | `/home/rtkbase/rtkbase/tools/unicore/unicore_gnss/unicore_cmd.py` | UnicoGnss class — sends commands to UM980 via serial |
| serial_comm.py | `/home/rtkbase/rtkbase/tools/unicore/unicore_gnss/serial_comm.py` | Low-level serial communication |

### Web App
| File | Location | What it does |
|---|---|---|
| server.py | `/home/rtkbase/rtkbase/web_app/server.py` | Flask app, all routes and socket events |
| settings.js | `/home/rtkbase/rtkbase/web_app/static/settings.js` | Settings page JS, handles configure_receiver button |
| base.html | `/home/rtkbase/rtkbase/web_app/templates/base.html` | Nav menu |
| logs.html | `/home/rtkbase/rtkbase/web_app/templates/logs.html` | PPK Logs page (renamed from Logs) |

### Config Files
| File | Location | What it does |
|---|---|---|
| settings.conf | `/home/rtkbase/rtkbase/settings.conf` | Main config: position, com_port, NTRIP credentials, datadir |
| Unicore_UM980_rtcm3.cfg | `/home/rtkbase/rtkbase/receiver_cfg/Unicore_UM980_rtcm3.cfg` | UM980 command sequence sent during configure-gnss |

---

## Hardware
- **OPZ3** Tailscale IP: <OPZ3_TAILSCALE_IP>
- **UM980 COM3** (JST connector: GND,EVT,RTK,TX3,RX3,5V) → OPZ3 `/dev/ttyS1` (UART5, Pin8/Pin10) — RTKBase RTCM3 ✅
- **UM980 COM2** (J7 through-hole pads, dupont wires soldered) → pending USB-UART adapter for OBSVM logging
- **UM980 COM1** (USB-C) → power + debug only
- **USB storage**: `/dev/sda1` ext4 mounted at `/mnt/rtkdata`
- **OPZ3 26-pin header UART assignments:**
  - UART5 (ttyS1): Pin8(PH2/TX)=UM980 RXD3, Pin10(PH3/RX)=UM980 TXD3 — RTKBase RTCM3 ✅
  - UART2 (ttyS2): Pin19(PG15/TX), Pin21(PG16/RX) — FAILED, conflicts with uart5 (see OBSVM section)
  - Active overlay: `overlays=uart5` only in `/boot/armbianEnv.txt`
- **LED traffic light**: GND→Pin20, Red→Pin15(GPIO72), Yellow→Pin16(GPIO79), Green→Pin18(GPIO78)

---

## Custom Implementations (Prajuab — NOT in original Stefal/RTKBase)

### rtkbase_leds.py
`/home/rtkbase/rtkbase/tools/rtkbase_leds.py`

Written by Prajuab to give visual status indication via traffic light LED module.

**Red (bottom) — Power/System**
- Solid = system running OK
- Blinking = first boot initializing

**Yellow (middle) — GNSS Signal**
- Solid = GNSS receiving RTCM & NMEA OK
- Blinking = weak/no GNSS signal

**Green (top) — Network/NTRIP**
- Solid = internet OK + NTRIP caster reachable + streaming
- Blinking = internet OK but NTRIP caster unreachable
- OFF = no internet

Reading the lights intuitively:
- All solid = everything perfect
- Only green blinking = network issue
- Yellow blinking = GNSS problem

Runs as `rtkbase_leds.service`
Hardware: common cathode, GND→Pin20, Red→Pin15(GPIO72), Yellow→Pin16(GPIO79), Green→Pin18(GPIO78)



These files were written by Prajuab and do not exist in the upstream Stefal/RTKBase repo:

### set_um980_base_position.py
`/home/rtkbase/rtkbase/tools/set_um980_base_position.py`

- Reads Lat/Lon/H position from `settings.conf`
- Converts to ECEF coordinates (X,Y,Z) using `coordinate_utils.llh_to_ecef()`
- Sends `MODE BASE X Y Z` command to UM980 via `UnicoGnss` class
- Called by `install.sh --configure-gnss` during initial setup
- **THE PROBLEM:** NOT called automatically when user saves new base coordinates in web UI
- **THE FIX NEEDED:** Must be triggered automatically after `apply_receiver_settings` saves new position

### Stefal original approach vs Prajuab approach

**Stefal (postman):**
- UM980 runs `MODE BASE TIME 60 1` → surveys its own position
- UM980 outputs RTCM3 MSM + RTCM 1005 with its own surveyed position
- `str2str -p ${position}` intercepts stream → **replaces RTCM 1005** with user coordinates from `settings.conf`
- UM980 never knows the true user coordinates

**Prajuab (inject):**
- `set_um980_base_position.py` sends `MODE BASE X Y Z` (ECEF) directly to UM980
- UM980 outputs RTCM3 MSM + RTCM 1005 with the **true user coordinates**
- `str2str -p ${position}` still runs and replaces RTCM 1005 — but both values are identical (both from `settings.conf`)
- **Advantage:** Anyone connecting directly to UM980 via UPrecise or serial tool sees the true coordinates, not a surveyed approximation

### Why ECEF instead of Lat/Lon/H?
Thailand has a complex geoid model. Using ECEF coordinates bypasses this and achieves 1.5cm vertical accuracy directly.

---

## V3.2 Development Status
- [x] Task 1: Rename "Logs" → "PPK Logs" in nav (base.html line 25) ✅
- [x] Task 2: Configure Receiver button — already exists in settings page ✅
- [x] Task 3: Auto-configure UM980 after saving coordinates — **REVERTED** (caused auto-detect to pick wrong port when COM2 wires connected). Needs redesign — call `set_um980_base_position.py` directly without full auto-detect.
- [ ] Task 4: GNSS Logs page — raw OBSVM logging from UM980 COM2 for PPP post-processing
- [ ] Task 5: COM2 wiring for OBSVM — 26-pin header approach FAILED (uart2-pg conflicts with uart5). Use USB-UART adapter instead. Wires already soldered to J7 pads (TXD2/RXD2) — just need USB-UART adapter connected to J7.
- [ ] Task 6: Auto Base feature — UI radio button (Manual/Auto Base), survey duration, Start Survey, Apply Position. Backend: `get_base_position()` added to `unicore_cmd.py` (Mar 4, 2026) using BESTNAVA command. Returns ellipsoidal height = H(orthometric) + N(undulation) from UM980's internal geoid. Approximate position — good enough for RTK rover work.

## GNSS Logs — Complete Workflow (Solving Hen/Egg Problem)

### Why OBSVM not BINEX/RTCM3
- **BINEX** — NOT supported on UM980 (only UB9A0/UBD9A0)
- **RTCM3 MSM** — hen/egg problem: needs position to start, but position needs PPP first
- **OBSVM** — ✅ supported on UM980, raw pseudorange+carrier phase+Doppler
- **UnicoreComm converter** — free software converts OBSVM binary → RINEX on PC

### ⚠️ COM2 UART2 Experiment — FAILED (Mar 3, 2026)

**What was tried:**
- Soldered dupont wires to UM980 J7 pads (TXD2/RXD2)
- Connected to OPZ3 Pin19(PG15) and Pin21(PG16)
- Added `uart2-pg` overlay to `/boot/armbianEnv.txt`

**What went wrong:**
1. `uart2-pg` overlay conflicted with `uart5` — ttyS1 (COM3/JST) stopped working completely
2. Even after removing `uart2-pg` overlay, physical wires on Pin19/Pin21 caused UM980 to respond on BOTH ttyS1 and ttyS2
3. Auto-detect (`Detect/Configure`) picked ttyS2 instead of ttyS1 → wrong com_port saved
4. Had to physically disconnect wires from Pin19/Pin21 before `Detect/Configure` would work correctly

**Recovery steps taken:**
1. Removed `uart2-pg` from `/boot/armbianEnv.txt`
2. Restored `settings.conf` from V3.2 backup (com_port=ttyS1)
3. Rebooted
4. Disconnected wires from Pin19/Pin21
5. Clicked `Detect/Configure` in web UI → UM980 reconfigured correctly

**Conclusion:**
- OPZ3 26-pin header UART2 (Pin19/Pin21) **cannot be used** for COM2 simultaneously with UART5 (Pin8/Pin10) for COM3
- **Solution: Use USB-UART adapter** for COM2 OBSVM logging instead

### Software Plan
1. Configure UM980 COM2: `OBSVMB COM2 1` (binary, 1Hz)
2. New systemd service reads `/dev/ttyS?` → logs to `/mnt/rtkdata/gnss_logs/`
3. New GNSS Logs web page: start/stop logging, download files
4. User downloads `.obs` file → converts with UnicoreComm software → RINEX → PPP

### Complete Workflow
```
UM980 COM2 (dupont wires on J7)
      ↓ OPZ3 second UART /dev/ttyS?
str2str logs OBSVMB binary
      ↓ /mnt/rtkdata/gnss_logs/YYYY-MM-DD.obs
User downloads file from GNSS Logs web page
      ↓ UnicoreComm converter on PC
RINEX obs + nav files
      ↓ upload to RTSD/NRCAN/AUSPOS
Accurate ECEF position
      ↓ enter in RTKBase Main Service settings
V3 base station with true coordinates ✅
```

### convbin formats (for reference)
convbin does NOT support Unicore OBSVM format. Supported: rtcm2, rtcm3, nov, ubx, sbp, hemis, stq, javad, nvs, binex, trimble, septentrio, rinex

---

## Backup
V3.1 backup: `/home/rtkbase/rtkbase_backup_V3.1`
Next version after changes: V3.2
