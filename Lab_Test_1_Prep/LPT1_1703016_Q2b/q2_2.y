%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token ST NUM FRUIT
%start s

%%
s: ST NUM FRUIT{printf("Accepted\n");}
   ;
%%

int main()
{
  yyparse();
  printf("Parsing Finished\n");
  return 0;
}

void yyerror(char *s)
{
    /* fprintf(stderr, "error: %s\n", s); */
    printf("Not Accepted\n");
}