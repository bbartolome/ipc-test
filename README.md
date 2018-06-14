# ipc-test

Test IPC over unix domain socket file using NodeJS and Docker volumes

Thanks to Xaekai for the example: https://gist.github.com/Xaekai/e1f711cb0ad865deafc11185641c632a

## Usage

```
docker-compose up
```

## Result (2 Clients)

AFAIK, the server has a socket for each client

```
server_1   | Loading interprocess communications test
client2_1  | Loading interprocess communications test
server_1   |   Mode: server 
server_1   |   Socket: /var/run/unix.sock 
server_1   |   Process: 5
server_1   | Checking for leftover socket.
client2_1  |   Mode: client 
client2_1  |   Socket: /var/run/unix.sock 
client2_1  |   Process: 7
client2_1  | Connecting to server.
server_1   | Removing leftover socket.
server_1   | Creating server.
server_1   | Connection acknowledged.
server_1   | Client connected.
server_1   | Sending boop.
server_1   | Client: foo
server_1   | Client's snoot confirmed booped.
client2_1  | Connected.
client2_1  | Server sent boop. Confirming our snoot is booped.
client2_1  | Server: bar
client1_1  | Loading interprocess communications test
client1_1  |   Mode: client 
client1_1  |   Socket: /var/run/unix.sock 
client1_1  |   Process: 5
client1_1  | Connecting to server.
server_1   | Connection acknowledged.
server_1   | Client connected.
server_1   | Sending boop.
client1_1  | Connected.
client1_1  | Server sent boop. Confirming our snoot is booped.
server_1   | Client's snoot confirmed booped.
```
