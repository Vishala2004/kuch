%{
#include<stdio.h>
int comment=0;
int flag=1;
%}
%%
"//".*\n	{comment++;}
"/*"		{flag=0;}
"*/" 		{if(flag==0)
			comment++;
			flag=1;
			}
.|\n		{if(flag==1){
			fprintf(yyout,"%s",yytext);}
			}
%%
int main()
{
char infile[10],outfile[10];
printf("Enter the input file");
scanf("%s",infile);
printf("Enter the ouput file");
scanf("%s",outfile);
yyin=fopen(infile,"r");
yyout=fopen(outfile,"w");
yylex();
printf("Total comment lines=%d",comment);
}
