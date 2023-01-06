CC=gcc
OBJ=hellomake.o hellofunction.o
DEPS=hellomake.h
CFLAGS=-I.

dekhi:
	gcc -E hello.c > hello.i
	gcc -S -masm=intel hello.c
	as -o hello.o hello.s

all:
	$(CC) -c hellomake.c -I.
	$(CC) -c hellofunction.c -I.
	$(CC) -o hellomake hellomake.o hellofunction.o

# hellomake: hellomake.c hellofunction.c
# 	$(CC) -o hello hellomake.c hellofunction.c -I.

# hellomake2: $(OBJ)
# 	$(CC) -o hellomake hellomake.o hellofunction.o -I.

# %.o : %.c $(DEPS)
# 	$(CC) -c -o $@ $< $(CFLAGS)

# .PHONY: clean

# clean:
# 	rm -f *.o
