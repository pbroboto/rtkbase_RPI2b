#!/usr/bin/env python3
"""
Set UM980 base station position from RTKBase settings
Converts geographic coordinates to ECEF and sends to UM980
"""

import sys
import os
import logging
from configparser import ConfigParser

# Add web_app to path for coordinate_utils
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..', 'web_app'))
from coordinate_utils import llh_to_ecef
from unicore.unicore_gnss.unicore_cmd import UnicoGnss

logging.basicConfig(format='%(levelname)s: %(message)s')
log = logging.getLogger(__name__)

def read_position_from_settings(settings_file):
    """Read base position from settings.conf"""
    config = ConfigParser()
    config.read(settings_file)
    
    position = config.get('main', 'position').replace("'", "").strip()
    lat, lon, height = position.split()
    
    return float(lat), float(lon), float(height)

def set_um980_position(port, baudrate, lat, lon, height, debug=False):
    """Convert coordinates and send to UM980"""
    if debug:
        log.setLevel(logging.DEBUG)
    else:
        log.setLevel(logging.INFO)
    
    # Convert to ECEF
    x, y, z = llh_to_ecef(lat, lon, height)
    
    log.info(f"Geographic: Lat={lat}°, Lon={lon}°, Height={height}m")
    log.info(f"ECEF: X={x:.4f}, Y={y:.4f}, Z={z:.4f}")
    
    # Send to UM980
    try:
        with UnicoGnss(port, baudrate=baudrate, timeout=2, debug=debug) as gnss:
            gnss.set_base_position_ecef(x, y, z)
            gnss.set_config_permanent()
        log.info("UM980 base position configured successfully")
        return True
    except Exception as e:
        log.error(f"Failed to configure UM980: {e}")
        return False

if __name__ == '__main__':
    import argparse
    
    parser = argparse.ArgumentParser(description='Set UM980 base position from RTKBase settings')
    parser.add_argument('--settings', default='settings.conf', help='Path to settings.conf')
    parser.add_argument('--port', default='/dev/ttyS1', help='Serial port')
    parser.add_argument('--baudrate', type=int, default=115200, help='Baudrate')
    parser.add_argument('--debug', action='store_true', help='Enable debug output')
    
    args = parser.parse_args()
    
    # Read coordinates from settings
    lat, lon, height = read_position_from_settings(args.settings)
    
    # Set UM980 position
    success = set_um980_position(args.port, args.baudrate, lat, lon, height, args.debug)
    
    sys.exit(0 if success else 1)