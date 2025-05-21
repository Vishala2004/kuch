%{
#include<stdio.h>
int result=0;
%}
%token NUM ID
S:'E'	{result=$1;}

%%
E:E'+'E 	{$$=$1+$3;}
 |E'-'E 	{$$=$1-$3;}
 |E'*'E 	{$$=$1*$3;}
 |E'/'E 	{if($3!=0)
  		$$=$1/$3;
  		else
  		{
  		printf("divide by 0 error");
  		exit(0);
  		}
  		}
 |'('E')' 	{$$=$2;}
 |NUM 		{$$=$1;}
%%
int main()
{
printf("enter ip ");
yyparse();
printf("result=%d",result);
printf("VALID EXPN");
}
yyerror()
{
printf("INVALID EXPN");
exit(0);
}

