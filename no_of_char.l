%{
#include <stdio.h>
int c=0;
%}

%%
.  { c++; }
\n { printf("THe Number of Characters is:%d\n",c); c=0; }

%%

int main(){
yylex();
return 0;
}


