%{
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
    #include "symtab.c"
    #include "codeGen.c"
	void yyerror();
	extern int lineno;
	extern int yylex();

    extern int address;
%}

%union
{
    char str_val[100];
    int int_val;
}

%token PRINT SCAN DIM AS
%token ADDOP SUBOP MULOP DIVOP EQUOP LT GT
%token LPAREN RPAREN LBRACE RBRACE SEMI ASSIGN
%token<str_val> ID
%token<int_val> ICONST
%token<int_val> INT

%left LT GT /*LT GT has lowest precedence*/
%left ADDOP 
%left MULOP /*MULOP has lowest precedence*/

%start program

%%
program: {gen_code(START, -1);} code {gen_code(HALT, -1);}
code: statements;

statements: statements statement | ;

statement:  declare
            |input
            |output
            ;

declare: DIM ID AS INT
        {
            insert($2,$4);
        }
        ;

input: ID ASSIGN SCAN LPAREN RPAREN
        {
            int address1 = idcheck($1);

            if(address1 != -1)
            {
                gen_code(SCAN_INT_VALUE, address1);
            }
            else
                yyerror();

        }
        
        
mul_exp: ID MULOP ID
        {
            int address1 = idcheck($1);
            int address2 = idcheck($3);

            if(address1 != -1 && address2 != -1)
            {
                gen_code(LD_VAR, address1);
                gen_code(LD_VAR, address2);
                gen_code(MUL, -1);
                gen_code(STORE, address);
                gen_code(PRINT_INT_VALUE, address);
            }
            else
                yyerror();
        }
        ;

output: PRINT LPAREN mul_exp RPAREN
        ;



%%

void yyerror ()
{
	printf("Syntax error at line %d\n", lineno);
	exit(1);
}

int main (int argc, char *argv[])
{
	yyparse();
	printf("Parsing finished!\n");

    printf("============= INTERMEDIATE CODE===============\n");
    print_code();

    printf("============= ASM CODE===============\n");
    print_assembly();

	return 0;
}
