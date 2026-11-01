#!/usr/bin/env python3
"""Read RTCM3 stream from port 5015, extract NMEA sentences, serve on port 5014"""
import socket
import threading

RTCM_HOST = 'localhost'
RTCM_PORT = 5015
NMEA_PORT = 5014

clients = []
clients_lock = threading.Lock()

def broadcast(data):
    with clients_lock:
        dead = []
        for c in clients:
            try:
                c.sendall(data)
            except:
                dead.append(c)
        for c in dead:
            clients.remove(c)

def reader():
    while True:
        try:
            s = socket.socket()
            s.connect((RTCM_HOST, RTCM_PORT))
            buf = b''
            while True:
                chunk = s.recv(4096)
                if not chunk:
                    break
                buf += chunk
                while b'\n' in buf:
                    line, buf = buf.split(b'\n', 1)
                    line = line.strip()
                    if line.startswith(b'$'):
                        broadcast(line + b'\r\n')
        except Exception as e:
            import time
            time.sleep(2)

def server():
    srv = socket.socket()
    srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    srv.bind(('', NMEA_PORT))
    srv.listen(5)
    while True:
        c, _ = srv.accept()
        with clients_lock:
            clients.append(c)

threading.Thread(target=reader, daemon=True).start()
server()
