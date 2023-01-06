/*Roll 1703012*/
/*Lexical Analyzer*/

%option noyywrap

%{
	#include <stdio.h>
	//#include <stdlib.h>
	//#include <string.h>
	#include "ex2.tab.h"
	
	int lineno = 1; // initialize to 1
	//void yyerror();
%}

alpha     [a-zA-Z]
digit     [0-9]
alnum     {alpha}|{digit}
delim     [ \t\n]
print     [ -~]

ID        {alpha}{alnum}*
ICONST    [0-9]{digit}*
FCONST    {digit}*"."{digit}+
CCONST    (\'{print}\')
STRING    \"{print}*\"

%%

"//".*     { } 
"float"      {return FLOAT_TYPE;}
"if"        {return IF;}
"elif"        {return ELIF;}
"else"        {return ELSE;}
">"        {return GT;}
"return"   {return RET;}
"function" {return FUNCTION; }
"begin"    {return BEG;}
"end"      {return END; }
"%"        {return MOD; }
"=="       {return EQUAL; }
"="       {return ASSIGN; }
"("        {return LP;}
")"        {return RP; }
";"        {return SEMI;}
":"        {return COLON;}
{STRING}        {return STRING;}
{ID}       {return ID;}
{ICONST}   {return INT_NUM;}
{FCONST}   {return FLOAT_NUM;}
{delim}    {}

%%