%{
#include <stdio.h>
%}

%%


"float" { fputs("double", yyout); }

[A-Za-z0-9]float[A-Za-z0-9] { ECHO; }

%%

int yywrap(){}

int main(){
yyin = fopen("zaka.c", "r");
yyout = fopen("zaka1.c", "w");
yylex();

fclose(yyin);
fclose(yyout);
return 0;
}
