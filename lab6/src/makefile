CC=gcc
CFLAGS=-pthread

all: server client

server: server.c
	$(CC) $(CFLAGS) -o server server.c 2>/dev/null >/dev/null

client: client.c
	$(CC) $(CFLAGS) -o client client.c 2>/dev/null >/dev/null

clean_ports:
	fuser -k 8000/tcp && fuser -k 8001/tcp && fuser -k 8002/tcp

clean:
	rm -rf server client 2>/dev/null >/dev/null