%option noyywrap

/* Roll: 1703016 */

/*Q2. Consider given statements, 1. I Want to Buy 10 Apples 2. I Want to Buy 10 Oranges 3. I Want to Buy 10 Mangoes . a) Show a flex file which can tokenize given statements. b) Show a bison file which can parse given statements.*/


%{
#include "q2_2.tab.h"
%}

digit [0-9]
amount ({digit}+)
buy "I Want to Buy"
alpha [A-Za-z]
fruit ({alpha}+)
delim [ \t\n]

%%
{delim} {}
{buy} {return buy;}
{fruit} {return fruit;}
{amount} {return amount;} 
%%