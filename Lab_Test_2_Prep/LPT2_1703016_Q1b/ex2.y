%{
	#include <stdio.h>
	//#include <stdlib.h>
	//#include <string.h>
	void yyerror(char *s);
	int yylex();
    int lineno;
%}

%token INT_TYPE FLOAT_TYPE ID FUNCTION RET BEG END IF ELIF ELSE STRING
%token INT_NUM FLOAT_NUM
%token LP RP SEMI COLON 
%token MOD EQUAL ASSIGN GT

%start code

%%
code: statements;

statements: statement statements 
          | statement 
          ;

statement: type ID operation ID LP STRING RP 
          | IF expression COLON statement ELSE COLON statement
          | IF expression COLON statement ELIF expression COLON statement ELSE COLON statement
          | expression
          ;

expression: ID operation num 
          | ID LP STRING RP
          ;

num: INT_NUM | FLOAT_NUM ;

type: INT_TYPE | FLOAT_TYPE;

operation: MOD | EQUAL | GT | ASSIGN ;

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