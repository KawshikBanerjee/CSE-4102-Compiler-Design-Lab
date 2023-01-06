/* Roll: 1703016 */

/* Comment: will accept all roll numbers within range. */

%option noyywrap
%{
    
%}

series 1[6-9]|20
dept 0[0-9]|10
id 00[0-9]|0[1-9][0-9]|1[0-7][0-9]|180
roll ({series}{dept}{id})
not_roll [^{roll}]
delim [ \t]

%%
{delim} {}
{roll} {printf("Roll -> %s\n", yytext);}
{not_roll} {}

%%

int main() {
    yylex();
    return 0;
}