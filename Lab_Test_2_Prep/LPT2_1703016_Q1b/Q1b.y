%{
	#include <stdio.h>
	//#include <stdlib.h>
	//#include <string.h>
	void yyerror(char *s);
	int yylex();
    int lineno;
%}

%token INT_TYPE ID FUNCTION RETURN BEG END 
%token INT_NUM FLOAT_NUM
%token LP RP SEMI COLON 
%token MOD EQUAL 

%start code

%%
code: statements;

statements: statement statements 
          | statement 
          ;

statement:  BEG 
          | END 
          | RETURN expression SEMI
          | expression
          ;

expression: ID COLON type
          | ID operation num operation num
          | FUNCTION ID LP expression RP
          ;

num: INT_NUM | FLOAT_NUM ;

type: INT_TYPE ;

operation: MOD | EQUAL ;

%%

int main()
{
  yyparse();
  printf("Parsing Finished");
  return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s at line %d\n", s, lineno);
    printf("Not Accepted\n");
}