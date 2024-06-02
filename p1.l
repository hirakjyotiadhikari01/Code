%{
#include <stdio.h>
%}

%%

a|b { printf("Accepted"); }
\n  { return 0; }
.   { printf("invalid Cahracter\n"); exit(1); }

%%

int main(){
yylex();
return 0;
}
