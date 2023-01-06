input = input.txt
output = output.txt

main:
	bison -d Q1c.y
	flex Q1c.l
	gcc Q1c.tab.c lex.yy.c
	./a < $(input) > $(output)