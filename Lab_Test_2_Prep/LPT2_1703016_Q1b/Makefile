input = input.txt
output = output.txt

main:
	bison -d Q1b.y
	flex Q1b.l
	gcc Q1b.tab.c lex.yy.c
	./a < $(input) > $(output)