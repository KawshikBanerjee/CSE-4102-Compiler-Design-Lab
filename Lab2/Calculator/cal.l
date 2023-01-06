%option noyywrap
%{
#include "cal.tab.h"
%}

digit [0-9]
number ({digit}+)
delim [ \t]
ws ({delim}+)

%%
{ws} {}
{number} {yylval = atoi(yytext); printf("%s NUM\n",yytext); return NUM;} //{printf("%s NUM\n",yytext);}
"+" {printf("%s ADD\n",yytext); return ADD;} //{printf("%s ADD\n",yytext);}
"-" {printf("%s SUB\n",yytext); return SUB;}
%%

/* int main(){
    yylex();
    return 0;
} */