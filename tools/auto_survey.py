#!/usr/bin/env python3
"""Standalone auto survey script - called from server.py via subprocess"""
import sys
import os
import time

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from tools.unicore.unicore_gnss.unicore_cmd import UnicoGnss

port = sys.argv[1]
duration = int(sys.argv[2])

try:
    with UnicoGnss(port, baudrate=115200, timeout=5) as gnss:
        cmd = "MODE BASE TIME {} 1".format(duration)
        gnss.send_read_until(gnss._cmd_with_checksum(cmd), expected=gnss._expected_res_for(cmd))
        time.sleep(duration * 60)
        pos = gnss.get_base_position()
        if pos and pos["status"] == "SOL_COMPUTED":
            print("{} {} {}".format(round(pos["lat"], 9), round(pos["lon"], 9), round(pos["hgt"], 4)))
            sys.exit(0)
        else:
            sys.exit(1)
except Exception as e:
    print("ERROR: {}".format(e), file=sys.stderr)
    sys.exit(1)
