/* Roll: 1703016 */

/* Comment: will accept all roll numbers within range. */

%option noyywrap
%{
    
%}

roll 00[0-9]|0[1-9][0-9]|1[0-7][0-9]|180
not_roll [^roll]
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