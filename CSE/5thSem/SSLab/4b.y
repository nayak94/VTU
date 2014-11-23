%{
#include <stdio.h>
#include <stdlib.h>
%}
%token C N
%%
s: C s1
s1: N s1
| C s1	 
| ;
%%
main()
{
printf("enter a string:\n");
if(yyparse()==0)
printf("valid string\n");
}
yyerror()
{
printf("invalid string\n");
exit(0);
}
yywrap()
{
return 1;
}
