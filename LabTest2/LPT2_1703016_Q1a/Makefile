input = input.txt
output = output.txt

main:
	flex Q1a.l
	gcc lex.yy.c
	# ./a < $(input) 
	./a < $(input) > $(output)