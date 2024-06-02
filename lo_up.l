%{
#include <stdio.h>
%}

%%
[a-z]  { putchar(yytext[0]-32); }
.      { putchar(yytext); }

%%

int main(){
yylex();
return 0;
}

