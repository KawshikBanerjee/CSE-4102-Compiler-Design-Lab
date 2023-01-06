/* Roll: 1703016 */
/* Lexical analysis */

%option noyywrap

%{
	//#include <stdio.h>
	//#include <stdlib.h>
	//#include <string.h>
	//#include "parser.tab.h"
	
	//int lineno = 1; // initialize to 1
	//void yyerror();
%}

alpha     [a-zA-Z]
digit     [0-9]
alnum     {alpha}|{digit}
delim     [ \t\n]

ID        {alpha}{alnum}*
ICONST    [0-9]{digit}*
FCONST    {digit}*"."{digit}+

%%

"//".*     { } 
"int"      {printf("%s -> INT_TYPE\n", yytext);}
"double"   {printf("%s -> DOUBLE_TYPE\n", yytext);}
"as"   {printf("%s -> AS_TYPE\n", yytext);}
"return"   {printf("%s -> RET\n", yytext);}
"func" {printf("%s -> FUNCTION\n", yytext); }
"begin"    {printf("%s -> BEG\n", yytext);}
"end"      {printf("%s -> END\n", yytext); }
"%"        {printf("%s -> MOD\n", yytext); }
"=="       {printf("%s -> EQUAL\n", yytext); }
"("        {printf("%s -> LP\n", yytext);}
")"        {printf("%s -> RP\n", yytext); }
"{"   {printf("%s -> LB\n", yytext);}
"}"   {printf("%s -> RB\n", yytext);}
";"        {printf("%s -> SEMI\n", yytext);}
":"        {printf("%s -> COLON\n", yytext);}
","        {printf("%s -> COMMA\n", yytext);}
"+"   {printf("%s -> PLUS_SIGN\n", yytext);}
{ID}       {printf("%s -> ID\n", yytext);}
{ICONST}   {printf("%s -> INT_NUM\n", yytext);}
{FCONST}   {printf("%s -> FLOAT_NUM\n", yytext);}
{delim}    {}

%% 

int main () {
	yylex();
	return 0;
}