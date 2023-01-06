%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token buy amount fruit
%start s

%%
s: buy amount fruit {printf("Accepted\n");}
    ;
%%

int main()
{
  yyparse();
  printf("Parsing Finished");
  return 0;
}

void yyerror(char *s)
{
    //fprintf(stderr, "error: %s\n", s);
    printf("Not Accepted\n");
}