CC=gcc
CFLAGS=-I.

# all : parallel_min_max zombie
all : zombie process_memory task5 parallel_min_max

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o ./task1 utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

process_memory : process_memory.o
	$(CC) -o ./process_memory process_memory.o $(CFLAGS)

zombie : zombie.o
	$(CC) -o ./zombie zombie.o $(CFLAGS)

task5 : task5.o utils.o utils.h find_min_max.o find_min_max.h
	$(CC) -o ./task5 task5.o utils.o find_min_max.o $(CFLAGS) -pthread

utils.o : utils.h
	$(CC) -o utils.o -c utils.c $(CFLAGS)

task5.o : utils.h find_min_max.h
	$(CC) -o task5.o -c parallel_sum.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

zombie.o :
	$(CC) -o zombie.o -c zombie.c $(CFLAGS)

process_memory.o :
	$(CC) -o process_memory.o -c process_memory.c $(CFLAGS) 2>/dev/null >/dev/null

clean :
	rm utils.o find_min_max.o zombie.o process_memory.o task5.o task5 task1 zombie process_memory 2>/dev/null >/dev/null

rc : clean all

