CC=gcc
CFLAGS=-I.

all : sequential_min_max parallel_min_max task5

sequential_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o ./task1 find_min_max.o utils.o sequential_min_max.c $(CFLAGS)

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o ./task2 utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

task5 : task5.o
	$(CC) -o ./task5 task5.o $(CFLAGS)

utils.o : utils.h
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

task5.o : 
	$(CC) -o task5.o -c task5.c $(CFLAGS)

clean :
	rm utils.o find_min_max.o task5.o task1 task2 task5
