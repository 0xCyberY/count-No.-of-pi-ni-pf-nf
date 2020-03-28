%{
#include<stdio.h>
int pi=0,ni=0,pf=0,nf=0;
%}
%%
[+]*[0-9]+ {pi++;}
[-][0-9]+ {ni++;}
[+]*[0-9]*\.[0-9]+ {pf++;}
[-][0-9]*\.[0-9]+ {nf++;}
%%
int yywrap();
int main()
{
printf("Enter the numbers\n");
yylex();
printf("Count the +ve numbers : %d\n",pi);
printf("Count the -ve numbers : %d\n",ni);
printf("Count the +ve fraction numbers : %d\n",pf);
printf("Count the +ve fraction numbers : %d\n",nf);
return 0;
}
