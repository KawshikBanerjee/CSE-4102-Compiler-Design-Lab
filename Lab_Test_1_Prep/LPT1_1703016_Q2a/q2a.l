/* Roll: 1703016 */

/* Problem 2(a): Show a flex file which can tokenize given statements. */

%option noyywrap
%{
    
%}

digit [0-9]
series ({digit}+)
alpha [A-Z]
university ({alpha}+)T
department ({alpha}+)E
delim [ \t]

%%
{delim} {}
{university} {printf("University -> %s\n", yytext);}
{department} {printf("Department -> %s\n", yytext);}
{series} {printf("Series -> %s\n", yytext);} 
%%

int main() {
    yylex();
    return 0;
}