%{
	#include <stdio.h>
	//#include <stdlib.h>
	//#include <string.h>
	void yyerror(char *s);
	int yylex();
    int lineno;
%}

%token INT_TYPE DOUBLE_TYPE AS_TYPE ID FUNCTION RET 
%token INT_NUM FLOAT_NUM
%token LP RP LB RB SEMI COMMA
%token MOD EQUAL PLUS_SIGN

%start code

%%
code: statements;

statements: statement statements 
          | statement 
          ;

statement:  FUNCTION ID LP ID AS_TYPE type COMMA ID AS_TYPE type RP  
          | LB
          | RB
          | expression
          ;

expression: RET ID PLUS_SIGN ID SEMI
          ;

num: INT_NUM | FLOAT_NUM ;

type: INT_TYPE | DOUBLE_TYPE ;

operation: MOD | EQUAL | PLUS_SIGN ;

%%

int main()
{
  yyparse();
  printf("Parsing Finished\n");
  return 0;
}

void yyerror(char *s)
{
    fprintf(stderr, "error: %s at line %d\n", s, lineno);
    printf("Not Accepted\n");
}