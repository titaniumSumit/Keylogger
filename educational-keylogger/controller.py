import socket
import threading

logging_active = True

def handle_client(client_socket):
    global logging_active
    while True:
        try:
            command = client_socket.recv(1024).decode('utf-8').strip()
            if command == "START":
                logging_active = True
                client_socket.sendall(b"Logging started.\n")
            elif command == "STOP":
                logging_active = False
                client_socket.sendall(b"Logging stopped.\n")
            elif command == "EXIT":
                client_socket.sendall(b"Exiting...\n")
                break
        except:
            break

def start_server():
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.bind(("0.0.0.0", 5000))
    server.listen(5)
    print("Controller listening on port 5000...")
    while True:
        client_socket, addr = server.accept()
        print(f"Connection received from {addr}")
        client_handler = threading.Thread(target=handle_client, args=(client_socket,))
        client_handler.start()

if __name__ == "__main__":
    start_server()
