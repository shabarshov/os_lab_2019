CC=gcc
CFLAGS=-pthread

all: tcp udp

tcp:
	$(CC) -o tcpclient tcpclient.c -pthread  
	$(CC) -o tcpserver tcpserver.c -pthread  

udp:
	$(CC) -o udpserver udpserver.c -pthread  
	$(CC) -o udpclient udpclient.c -pthread

clean_ports:
	fuser -k 5050/tcp
	fuser -k 5000/udp

clean:
	rm -rf udpclient udpserver tcpclient tcpserver