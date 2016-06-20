main: main.o utils.o
	gcc -std=c99 main.o utils.o -o main -Wall -lpthread -lrt

main.o: main.c utils.h utils.c
	gcc -std=c99 -c main.c -o main.o -Wall -lpthread -lrt

utils.o: utils.c utils.h
	gcc -std=c99 -c utils.c -o utils.o -Wall -lpthread -lrt

clean:
	rm main.o utils.o main

.PHONY: clean
