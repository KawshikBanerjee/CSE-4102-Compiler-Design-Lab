/* Roll: 1703016 */
/* Syntax analysis */

%option noyywrap

%{
	//#include <stdio.h>
	//#include <stdlib.h>
	//#include <string.h>
	#include "Q1b.tab.h"
	
	int lineno = 1; // initialize to 1
	//void yyerror();
%}

alpha     [a-zA-Z]
digit     [0-9]
alnum     {alpha}|{digit}
delim     [ \t]

ID        {alpha}{alnum}*
ICONST    [0-9]{digit}*
FCONST    {digit}*"."{digit}+

%%

"//".*     {} 
"int"      {return INT_TYPE;}
"return"   {return RETURN;}
"function" {return FUNCTION;}
"begin"    {return BEG;}
"end"      {return END;}
"%"        {return MOD;}
"=="       {return EQUAL;}
"("        {return LP;}
")"        {return RP;}
";"        {return SEMI;}
":"        {return COLON;}
{ID}       {return ID;}
{ICONST}   {return INT_NUM;}
{FCONST}   {return FLOAT_NUM;}
{delim}    {}
"\n"       {{ lineno += 1; }}

%% 
