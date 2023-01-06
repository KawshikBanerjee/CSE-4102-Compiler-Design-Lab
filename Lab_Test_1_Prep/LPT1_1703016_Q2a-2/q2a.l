/* Roll: 1703016 */

/* Problem 2(b): Show a flex file which can tokenize given statements. */

%option noyywrap
%{
    
%}

alpha [A-Za-z]
name ({alpha}+)
delim [ \t]

%%
{delim} {}
"University of" {}
{name} {printf("University -> %s\n", yytext);}
%%

int main() {
    yylex();
    return 0;
}