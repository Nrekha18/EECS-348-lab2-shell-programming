CC = gcc
CFLAGS = -Wall -g

isOdd: main.o isOdd.o
	$(CC) $(CFLAGS) -o isOdd main.o isOdd.o

main.o: main.c isOdd.h
	$(CC) $(CFLAGS) -c main.c

isOdd.o: isOdd.c isOdd.h
	$(CC) $(CFLAGS) -c isOdd.c

.PHONY: clean
clean:
	rm -f *.o isOdd
