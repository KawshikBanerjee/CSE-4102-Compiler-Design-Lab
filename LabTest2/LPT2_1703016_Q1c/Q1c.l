/* Roll: 1703016 */
/* Semantic analysis */

%option noyywrap

%{
	//#include <stdio.h>
	//#include <stdlib.h>
	//#include <string.h>
	#include "Q1c.tab.h"
	
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
"double"  {return DOUBLE_TYPE;}
"as" {return AS_TYPE;}
"return"   {return RET;}
"func" {return FUNCTION;}
"%"        {return MOD;}
"=="       {return EQUAL;}
"("        {return LP;}
")"        {return RP;}
"{"  {return LB;}
"}"  {return RB;}
";"        {return SEMI;}
","  {return COMMA;}
"+"  {return PLUS_SIGN;}
{ID}       {return ID;}
{ICONST}   {return INT_NUM;}
{FCONST}   {return FLOAT_NUM;}
{delim}    {}
"\n"       {{ lineno += 1; }}

%% 
