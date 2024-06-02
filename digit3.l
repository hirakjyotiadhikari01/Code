%{
#include <stdio.h>
%}

%%
[a*|b*]* { printf("Accepted\n"); }
.   { printf("Invalid\n"); }
%%

int main(){
yylex();
return 0;
}
