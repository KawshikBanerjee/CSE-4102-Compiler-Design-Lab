make:
	gcc -E q1.c > q1.i
	gcc -S -masm=intel q1.c
	as -o q1.o q1.s
	objdump -M intel -d q1.o > q1.dump
	gcc -o q1 q1.c