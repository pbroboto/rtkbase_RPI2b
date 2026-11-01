"""
Coordinate conversion utilities for RTKBase using pyproj
"""
from pyproj import Transformer
import math

def llh_to_ecef(lat, lon, height):
    """
    Convert geodetic coordinates (lat, lon, height) to ECEF (X, Y, Z) using pyproj
    
    Args:
        lat: Latitude in decimal degrees
        lon: Longitude in decimal degrees
        height: Height above ellipsoid in meters
    
    Returns:
        tuple: (X, Y, Z) in meters
    """
    # Create transformer from WGS84 geographic to WGS84 geocentric (ECEF)
    # EPSG:4979 = WGS84 3D geographic (lat, lon, height)
    # EPSG:4978 = WGS84 geocentric (X, Y, Z)
    transformer = Transformer.from_crs("EPSG:4979", "EPSG:4978", always_xy=False)
    
    # Transform: lat, lon, height -> X, Y, Z
    X, Y, Z = transformer.transform(float(lat), float(lon), float(height))
    
    return (X, Y, Z)

def ecef_to_llh(x, y, z):
    """
    Convert ECEF (X, Y, Z) to geodetic coordinates (lat, lon, height) using pyproj
    
    Args:
        x: X coordinate in meters
        y: Y coordinate in meters
        z: Z coordinate in meters
    
    Returns:
        tuple: (latitude, longitude, height) - lat/lon in decimal degrees, height in meters
    """
    # Create transformer from WGS84 geocentric (ECEF) to WGS84 geographic
    transformer = Transformer.from_crs("EPSG:4978", "EPSG:4979", always_xy=False)
    
    # Transform: X, Y, Z -> lat, lon, height
    lat, lon, height = transformer.transform(float(x), float(y), float(z))
    
    return (lat, lon, height)

# Test function
if __name__ == "__main__":
    # Test with your base station coordinates
    lat = 12.708031892147
    lon = 101.009721420674
    height = 3.320
    
    print(f"Input (Geographic):")
    print(f"  Lat: {lat}°")
    print(f"  Lon: {lon}°")
    print(f"  Height: {height} m")
    
    # Convert to ECEF
    X, Y, Z = llh_to_ecef(lat, lon, height)
    print(f"\nECEF Coordinates:")
    print(f"  X: {X:.4f} m")
    print(f"  Y: {Y:.4f} m")
    print(f"  Z: {Z:.4f} m")
    
    # Convert back to verify
    lat2, lon2, h2 = ecef_to_llh(X, Y, Z)
    print(f"\nVerification (back to Geographic):")
    print(f"  Lat: {lat2}°")
    print(f"  Lon: {lon2}°")
    print(f"  Height: {h2} m")
    
    # Check accuracy
    print(f"\nAccuracy:")
    print(f"  Lat error: {abs(lat - lat2) * 111000:.6f} m")
    print(f"  Lon error: {abs(lon - lon2) * 111000 * math.cos(math.radians(lat)):.6f} m")
    print(f"  Height error: {abs(height - h2):.6f} m")