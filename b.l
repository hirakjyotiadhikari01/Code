%{
#include <stdio.h>
%}

%%
[0-9]  { printf("Input is a digit"); }
.      { printf("Is not a digit"); }

%%

int main(){
yylex();
return 0;
}
