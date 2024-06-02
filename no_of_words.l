%{
#include <stdio.h>
int c=0;
%}

%%
[a-zA-Z]+  { c++; }
\n  { printf("The number of words is: %d\n",c); c++; }

%%

int main(){
yylex();
return 0;
}

