%{
	#include <stdio.h>
	//#include <stdlib.h>
	//#include <string.h>
	void yyerror(char *s);
	int yylex();
    int lineno;
%}

%token INT_TYPE DOUBLE_TYPE SINGLE_TYPE AS_TYPE ID 
%token FUNCTION FUNCTION_DECLARE RET LET
%token INT_NUM FLOAT_NUM
%token LP RP LB RB SEMI COMMA
%token ASSIGN MOD EQUAL 
%token PLUS_SIGN PLUS_SOMAN GREATER_SIGN SMALLER_SIGN MINUS_SIGN
%token DIM FOR TO NEXT START END PRINT
%token IF ELSEIF ELSE THEN 

%start code

%%
code: statements 
    | FUNCTION_DECLARE ID LP RP statements END FUNCTION_DECLARE;

statements: statement statements 
          | statement 
          ;

statement: ID FUNCTION_DECLARE LP RP THEN
            | START
            | END
            | LET ID AS_TYPE type
            | ID operation num
            | ID operation num operation num operation ID
            | ID PRINT
            | IF ID operation num THEN
            | IF ID operation ID THEN
            | ELSEIF ID operation ID THEN
            | ELSE
            | ID PLUS_SOMAN num
            ;


num: INT_NUM | FLOAT_NUM ;

type: INT_TYPE | DOUBLE_TYPE | SINGLE_TYPE ;

operation: ASSIGN | MOD | EQUAL | PLUS_SIGN | GREATER_SIGN | SMALLER_SIGN | MINUS_SIGN ;

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