#!/usr/bin/env python3
"""
RTKBase Traffic Light LED Controller
=====================================
Controls a 3-LED traffic light module connected to RPi2B GPIO pins.

LED Behavior:
  Red    (GPIO22 - Pin15): Solid = power/system OK, Blinking = boot/system error
  Yellow (GPIO23 - Pin16): Solid = GNSS receiving RTCM & NMEA OK, Blinking = weak/no GNSS signal
  Green  (GPIO24 - Pin18): Solid = internet OK + NTRIP caster reachable + streaming
                                Blinking = internet OK but NTRIP caster unreachable
                                OFF = no internet

Summary:
  All solid       = Everything OK
  Green blinking  = Network/NTRIP issue
  Yellow blinking = GNSS problem
  Red blinking    = System problem

Boot sequence:
  Red blinking for BOOT_DELAY seconds while services initialize.
  Then normal monitoring begins (Red goes solid).

Monitors:
  - str2str_tcp service log : GNSS data health (bps > 5000 from /dev/ttyAMA0)
  - ping 8.8.8.8            : Internet connectivity
  - str2str_ntrip_A log     : NTRIP streaming status (DigitalOcean blocks ICMP so no ping check)
"""

import subprocess
import time
import os
import signal
import sys
import configparser

# GPIO pin numbers (BCM GPIO numbers for RPi2B)
RED_GPIO    = 534   # BCM22 - Pin15 - Power/System
YELLOW_GPIO = 535   # BCM23 - Pin16 - GNSS
GREEN_GPIO  = 536   # BCM24 - Pin18 - Internet/NTRIP

GPIO_PATH = "/sys/class/gpio"


# Status check interval (seconds)
CHECK_INTERVAL = 5

# Blink timing
BLINK_ON  = 0.5
BLINK_OFF = 0.5

# Boot delay (seconds) - Red blinks while services initialize
BOOT_DELAY = 10

# Read mountpoint name from settings.conf

def get_mnt_name():
    try:
        with open("/home/rtkbase/rtkbase/settings.conf") as f:
            for line in f:
                if line.startswith("mnt_name_a="):
                    return line.strip().split("=")[1].strip("'\"")
    except:
        pass
    return "RTK_STATION"  # fallback

MNT_NAME_A = get_mnt_name()

def gpio_export(pin):
    """Export a GPIO pin if not already exported."""
    if not os.path.exists(f"{GPIO_PATH}/gpio{pin}"):
        try:
            with open(f"{GPIO_PATH}/export", "w") as f:
                f.write(str(pin))
            time.sleep(0.1)
        except IOError as e:
            print(f"Error exporting GPIO {pin}: {e}")
            return False
    return True


def gpio_unexport(pin):
    """Unexport a GPIO pin."""
    if os.path.exists(f"{GPIO_PATH}/gpio{pin}"):
        try:
            with open(f"{GPIO_PATH}/unexport", "w") as f:
                f.write(str(pin))
        except IOError:
            pass


def gpio_set_direction(pin, direction="out"):
    """Set GPIO pin direction."""
    try:
        with open(f"{GPIO_PATH}/gpio{pin}/direction", "w") as f:
            f.write(direction)
        return True
    except IOError as e:
        print(f"Error setting direction for GPIO {pin}: {e}")
        return False


def gpio_write(pin, value):
    """Write value (0 or 1) to GPIO pin."""
    try:
        with open(f"{GPIO_PATH}/gpio{pin}/value", "w") as f:
            f.write(str(value))
    except IOError:
        pass


def setup_gpio():
    """Initialize all GPIO pins - all OFF."""
    pins = [RED_GPIO, YELLOW_GPIO, GREEN_GPIO]
    for pin in pins:
        if not gpio_export(pin):
            return False
        if not gpio_set_direction(pin, "out"):
            return False
        gpio_write(pin, 0)
    return True


def cleanup_gpio():
    """Turn off all LEDs and unexport GPIO pins."""
    pins = [RED_GPIO, YELLOW_GPIO, GREEN_GPIO]
    for pin in pins:
        gpio_write(pin, 0)
        #gpio_unexport(pin)  # keep exported to prevent hardware reset to HIGH
    print("GPIO cleanup done.")


def check_gnss_health():
    """
    Check if GNSS data is healthy by reading str2str_tcp log.
    Returns True if data is flowing (bps > 5000 from /dev/ttyAMA0).
    """
    try:
        result = subprocess.run(
            ["journalctl", "-u", "str2str_tcp", "--no-pager", "-n", "5", "--since", "90 sec ago"],
            capture_output=True, text=True, timeout=5
        )
        output = result.stdout
        for line in output.split("\n"):
            if "bps" in line and "/dev/ttyAMA0" in line:
                parts = line.split()
                for i, part in enumerate(parts):
                    if part == "bps":
                        try:
                            bps = int(parts[i - 1])
                            if bps > 5000:
                                return True
                        except (ValueError, IndexError):
                            pass
        return False
    except (subprocess.TimeoutExpired, Exception) as e:
        print(f"Error checking GNSS health: {e}")
        return False


def check_internet():
    """
    Check internet connectivity by pinging 8.8.8.8.
    Returns True if reachable.
    """
    try:
        result = subprocess.run(
            ["ping", "-c", "1", "-W", "3", "8.8.8.8"],
            capture_output=True, timeout=5
        )
        return result.returncode == 0
    except (subprocess.TimeoutExpired, Exception) as e:
        print(f"Error checking internet: {e}")
        return False



def check_ntrip_streaming():
    """
    Check if NTRIP is actively streaming by reading str2str_ntrip_A log.
    Returns True if connected and sending data.
    """
    try:
        result = subprocess.run(
            ["journalctl", "-u", "str2str_ntrip_A", "--no-pager", "-n", "10", "--since", "5 min ago"],
            capture_output=True, text=True, timeout=5
        )
        output = result.stdout
        for line in output.split("\n"):
            if "bps" in line and MNT_NAME_A in line:
                if "[CC" in line:
                    parts = line.split()
                    for i, part in enumerate(parts):
                        if part == "bps":
                            try:
                                bps = int(parts[i - 1])
                                if bps > 0:
                                    return True
                            except (ValueError, IndexError):
                                pass
        return False
    except (subprocess.TimeoutExpired, Exception) as e:
        print(f"Error checking NTRIP streaming: {e}")
        return False


def signal_handler(sig, frame):
    """Handle shutdown signals gracefully."""
    print("\nShutting down LED controller...")
    cleanup_gpio()
    sys.exit(0)


def blink_leds(leds_to_blink, leds_solid, cycles):
    """
    Blink specified LEDs while keeping others solid.
    leds_to_blink : list of GPIO pins to blink
    leds_solid    : list of (GPIO pin, value) to keep steady
    cycles        : number of blink cycles
    """
    for _ in range(cycles):
        for pin, val in leds_solid:
            gpio_write(pin, val)
        for pin in leds_to_blink:
            gpio_write(pin, 1)
        time.sleep(BLINK_ON)
        for pin in leds_to_blink:
            gpio_write(pin, 0)
        time.sleep(BLINK_OFF)


def main():
    """Main loop for LED traffic light control."""
    signal.signal(signal.SIGTERM, signal_handler)
    signal.signal(signal.SIGINT, signal_handler)

    print("RTKBase Traffic Light LED Controller")
    print("====================================")
    print(f"Red    = GPIO{RED_GPIO} (Pin 15) - Power/System")
    print(f"Yellow = GPIO{YELLOW_GPIO} (Pin 16) - GNSS")
    print(f"Green  = GPIO{GREEN_GPIO} (Pin 18) - Internet/NTRIP")
    print(f"GND    = Pin 20")
    print()
    print("Red    : Solid=System OK      | Blinking=Boot/Error")
    print("Yellow : Solid=GNSS OK        | Blinking=No GNSS signal")
    print("Green  : Solid=Internet+NTRIP | Blinking=Internet OK/NTRIP down | OFF=No internet")
    print()

    if not setup_gpio():
        print("Failed to setup GPIO pins. Are you running as root?")
        sys.exit(1)

    print("GPIO setup complete.")

    # === BOOT STATE: Red blinking, Yellow/Green OFF ===
    print(f"Boot state: Red blinking for {BOOT_DELAY}s while services initialize...")
    gpio_write(YELLOW_GPIO, 0)
    gpio_write(GREEN_GPIO, 0)
    boot_cycles = int(BOOT_DELAY / (BLINK_ON + BLINK_OFF))
    blink_leds(
        leds_to_blink=[RED_GPIO],
        leds_solid=[(YELLOW_GPIO, 0), (GREEN_GPIO, 0)],
        cycles=boot_cycles
    )

    # Red goes solid after boot
    gpio_write(RED_GPIO, 1)
    print("Boot complete. Starting monitoring...")
    print()

    try:
        while True:
            gnss_ok     = check_gnss_health()
            internet_ok = check_internet()
            ntrip_ok    = check_ntrip_streaming() if internet_ok else False

            status = (
                f"GNSS: {'OK' if gnss_ok else 'NO DATA'} | "
                f"Internet: {'OK' if internet_ok else 'DOWN'} | "
                f"NTRIP: {'OK' if ntrip_ok else 'DOWN'}"
            )
            print(f"[{time.strftime('%H:%M:%S')}] {status}")

            cycles = int(CHECK_INTERVAL / (BLINK_ON + BLINK_OFF))

            # RED: always solid (power/system OK since we are running)
            gpio_write(RED_GPIO, 1)

            # YELLOW: GNSS
            if gnss_ok:
                gpio_write(YELLOW_GPIO, 1)
            # else handled in blink section below

            # GREEN: Internet/NTRIP
            if internet_ok and ntrip_ok:
                # All network OK - Green solid
                gpio_write(GREEN_GPIO, 1)
                if gnss_ok:
                    time.sleep(CHECK_INTERVAL)
                else:
                    # Yellow blinks, Red/Green solid
                    blink_leds(
                        leds_to_blink=[YELLOW_GPIO],
                        leds_solid=[(RED_GPIO, 1), (GREEN_GPIO, 1)],
                        cycles=cycles
                    )

            elif internet_ok and not ntrip_ok:
                # Internet OK but NTRIP down - Green blinks
                if gnss_ok:
                    # Yellow solid, Green blinks
                    blink_leds(
                        leds_to_blink=[GREEN_GPIO],
                        leds_solid=[(RED_GPIO, 1), (YELLOW_GPIO, 1)],
                        cycles=cycles
                    )
                else:
                    # Yellow and Green both blink
                    blink_leds(
                        leds_to_blink=[YELLOW_GPIO, GREEN_GPIO],
                        leds_solid=[(RED_GPIO, 1)],
                        cycles=cycles
                    )

            else:
                # No internet - Green OFF
                gpio_write(GREEN_GPIO, 0)
                if gnss_ok:
                    # Yellow solid, Green OFF
                    time.sleep(CHECK_INTERVAL)
                else:
                    # Yellow blinks, Green OFF
                    blink_leds(
                        leds_to_blink=[YELLOW_GPIO],
                        leds_solid=[(RED_GPIO, 1), (GREEN_GPIO, 0)],
                        cycles=cycles
                    )

    except KeyboardInterrupt:
        pass
    finally:
        cleanup_gpio()


if __name__ == "__main__":
    main()
