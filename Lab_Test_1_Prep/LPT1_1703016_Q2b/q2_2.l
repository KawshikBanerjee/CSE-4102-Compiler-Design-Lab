%option noyywrap

/* Q2. Consider given statements, */
/*1. Eat 10 Apple 2. Eat 20 Orange 3. Eat 30 Mango . */
/*a) Show a flex file which can tokenize given statements. */
/*b) Show a bison file which can parse given statements.*/

/*Roll: 1703016*/

%{
#include "q2_2.tab.h"
%}

digit [0-9]
chars [A-Za-z]
nums ({digit}+)
alpha ({chars}+)
delim [ \t]

%%
"Eat" {return ST;}
{nums} {return NUM;}
{alpha} {return FRUIT;}
{delim} {}
%%