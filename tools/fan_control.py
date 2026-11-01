#!/usr/bin/env python3
"""
RTKBase V3 — Automatic fan control
RPi2B Pin26 / BCM7 (GPIO519) → NPN transistor → 15mm 5V fan
Fan ON  >= 52°C (rolling average of last 3 readings)
Fan OFF <  47°C (rolling average of last 3 readings)
Checks every 10 seconds
"""

import time
import collections

THERMAL_ZONE = "/sys/class/thermal/thermal_zone0/temp"
FAN_GPIO     = 519       # Pin26 / PC10
TEMP_ON      = 52000    # millidegrees C
TEMP_OFF     = 49000    # millidegrees C
POLL_SEC     = 10
AVG_SAMPLES  = 3        # rolling average over 3 readings (30 seconds)


def read_temp():
    with open(THERMAL_ZONE) as f:
        return int(f.read().strip())


def gpio_export(pin):
    try:
        with open("/sys/class/gpio/export", "w") as f:
            f.write(str(pin))
    except OSError:
        pass


def gpio_direction(pin, direction):
    with open(f"/sys/class/gpio/gpio{pin}/direction", "w") as f:
        f.write(direction)


def gpio_write(pin, value):
    with open(f"/sys/class/gpio/gpio{pin}/value", "w") as f:
        f.write(str(value))


def cleanup(pin):
    try:
        gpio_write(pin, 0)
        with open("/sys/class/gpio/unexport", "w") as f:
            f.write(str(pin))
    except Exception:
        pass


def main():
    gpio_export(FAN_GPIO)
    time.sleep(0.1)
    gpio_direction(FAN_GPIO, "out")
    gpio_write(FAN_GPIO, 0)

    fan_on = False
    readings = collections.deque(maxlen=AVG_SAMPLES)

    print(f"Fan control started. GPIO{FAN_GPIO} | "
          f"ON>={TEMP_ON//1000}°C  OFF<{TEMP_OFF//1000}°C  "
          f"AVG over {AVG_SAMPLES} readings ({AVG_SAMPLES*POLL_SEC}s)",
          flush=True)

    try:
        while True:
            try:
                temp = read_temp()
                readings.append(temp)
                avg_temp = sum(readings) / len(readings)

                if not fan_on and avg_temp >= TEMP_ON:
                    gpio_write(FAN_GPIO, 1)
                    fan_on = True
                    print(f"Fan ON  @ avg {avg_temp/1000:.1f}°C "
                          f"(instant {temp/1000:.1f}°C)", flush=True)
                elif fan_on and avg_temp < TEMP_OFF:
                    gpio_write(FAN_GPIO, 0)
                    fan_on = False
                    print(f"Fan OFF @ avg {avg_temp/1000:.1f}°C "
                          f"(instant {temp/1000:.1f}°C)", flush=True)

            except Exception as e:
                print(f"Error reading temp: {e}", flush=True)
            time.sleep(POLL_SEC)

    except KeyboardInterrupt:
        print("Fan control stopped by user.", flush=True)
    finally:
        cleanup(FAN_GPIO)
        print("GPIO cleaned up. Fan OFF.", flush=True)


if __name__ == "__main__":
    main()
