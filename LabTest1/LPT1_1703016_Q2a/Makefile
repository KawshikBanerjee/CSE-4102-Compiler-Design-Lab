input = input.txt
output = output.txt

main:
	flex q2a.l
	gcc lex.yy.c
	./a < $(input) > $(output)