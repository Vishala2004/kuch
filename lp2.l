%{
#include "y.tab.h"
%}
%%
[0-9]+ 	 	{yylval=atoi(yytext)
		{return NUM;}
[_a-zA-Z][a-zA-Z_0-9]*	{return ID;}
[ \t]	;
\n 	{return 0;}
. 	{return yytext[0];}
[+\-*\/()] 	{return yytext[0];}
%%
