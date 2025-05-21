%{
#include<stdio.h>
%}
%token	A B
%%
S:C
C:A C|B;
%%
int main()
{
printf("Enter a string");
yyparse();
printf("VAlid");
}
yyerror(){
printf("Error\n");
exit(0);
}
