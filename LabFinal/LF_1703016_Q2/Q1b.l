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
"integer"      {return INT_TYPE;}
"Single"  {return SINGLE_TYPE;}
"double"  {return DOUBLE_TYPE;}
"dhori" {return LET;}
"hocche type" {return AS_TYPE;}
"return"   {return RET;}
"func" {return FUNCTION;}
"Dim"  {return DIM;}
"sub"  {return FUNCTION_DECLARE;}
"suru" {return START;}
"For" {return FOR;}
"To" {return TO;}
"Next" {return NEXT;}
"jodi" {return IF;}
"abar jodi" {return ELSEIF;}
"tao_jodi_na_hoi"  {return ELSE;}
"ar" {return THEN;}
"sesh" {return END;}
"k print kori" {return PRINT;}
"%"        {return MOD;}
"=="       {return EQUAL;}
"soman"        {return ASSIGN;}
"+soman"       {return PLUS_SOMAN;}
"boro"        {return GREATER_SIGN;}
"choto"       {return SMALLER_SIGN;}
"("        {return LP;}
")"        {return RP;}
"{"  {return LB;}
"}"  {return RB;}
";"        {return SEMI;}
","  {return COMMA;}
"jog"  {return PLUS_SIGN;}
"biyog"    {return MINUS_SIGN;}
{ID}       {return ID;}
{ICONST}   {return INT_NUM;}
{FCONST}   {return FLOAT_NUM;}
{delim}    {}
"\n"       {{ lineno += 1; }}

%% 
