%{
#include<stdio.h>
int idc=0,opc=0;
int id[10];
char op[10];
char stack[10];
int top=-1;
%}
%%
[0-9]+	{id[idc++]=atoi(yytext);}
[+]	{op[opc++]='+';}
[-]	{op[opc++]='-';}
[*]	{op[opc++]='*';}
[/]	{op[opc++]='/';}
[(] 	{stack[++top]='(';}


[)]	{if(stack[top]=='('&&top!=-1)
	{
	top--;
	}
	else
	{
	printf("Invalid expn");
	exit(0);
	};
	}

%%
int main()
{
printf("enter the i/p");
yylex();
if(idc>opc&&top==-1){
printf("valid expn");

printf("Total no of id=%d",idc);
printf("The identifiers are");
for(int i=0;i<idc;i++)
{
printf(" %d",id[i]);
}
printf("Total no of op=%d",opc);
printf("The operators are");
for(int j=0;j<=opc;j++)
{
printf(" %c",op[j]);
}
}
else{
printf("Invalid expn");
}
}

