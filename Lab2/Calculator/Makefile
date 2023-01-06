main: cal.l cal.y
	# flex cal.l
	# gcc lex.yy.c
	bison -d cal.y
	flex cal.l
	gcc cal.tab.c lex.yy.c
	a <input.txt> output.txt