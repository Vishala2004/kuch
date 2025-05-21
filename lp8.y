%{
#include<stdio.h>
#include<stdlib.h>

extern FILE *yyin;
int k=0,i=0,op=0,d=0;
%}
%token KEY ID OP DIGIT
%%
S:KEY S		{k++;}
 |ID S		{i++;}
 |OP S		{op++;}
 |DIGIT S	{d++;}
 |OP		{op++;}
 |KEY		{k++;}
 |ID		{i++;}
 |DIGIT		{d++;}
%%
int main()
{
yyin=fopen("lp8.c","r");
do{
yyparse();
}
while(!feof(yyin));
printf("The count of key is %d\n ,id is %d\n,digit is %d\n,operator is %d\n",k,i,d,op);}
yyerror(){
printf("Error");
exit(0);
}

