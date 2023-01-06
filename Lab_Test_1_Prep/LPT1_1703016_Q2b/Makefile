input = input.txt

main:
	bison -d q2_2.y
	flex q2_2.l
	gcc q2_2.tab.c lex.yy.c
	./a < $(input) 