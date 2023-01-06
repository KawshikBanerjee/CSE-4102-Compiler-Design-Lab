/* Roll: 1703016 */

/*Q2. Consider given statements, 1. I Want to Buy 10 Apples 2. I Want to Buy 10 Oranges 3. I Want to Buy 10 Mangoes . a) Show a flex file which can tokenize given statements. b) Show a bison file which can parse given statements.*/
%option noyywrap
%{
    
%}

digit [0-9]
amount ({digit}+)
alpha [A-Za-z]
fruit ({alpha}+)
delim [ \t]

%%
{delim} {}
"I Want to Buy" {}
{fruit} {printf("Fruit -> %s\n", yytext);}
{amount} {printf("Amount -> %s\n", yytext);} 
%%

int main() {
    yylex();
    return 0;
}