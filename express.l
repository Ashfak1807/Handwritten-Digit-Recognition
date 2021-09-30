%{
#include<stdio.h>
#include<stdlib.h>
int v=0,op=0,id=0,flag=0;
%}

%%

[a-zA-z0-9]+  {id++; printf("\n Identifier:"); ECHO;}
[\+\-\*\/\=\n]+ {op++;  printf("\n Operator:"); ECHO;}
"("     {v++;}
")"     {v--;}
";"     {flag=0;)

.| \n
%%
int main()
{
printf("Enter the arithmetic expression: \n");
yylex();
if((op+1)==id && v==0)
printf("\n It is a valid arithmetic expression \n");
else
printf("The expression is invalid: \n");
printf(" Number of identifiers: %d\n",id);
printf("Number of operators: %d\n",op);
}
