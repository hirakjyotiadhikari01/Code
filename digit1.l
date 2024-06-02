%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}

%%
"int" { printf("Keyword: int\n"); }
"main" { printf("Keyword: main\n"); }
"const" { printf("keyword: const\n"); }
"sizeof" { printf("Keyword: sizeof\n"); }


[a-zA-Z_][a-zA-Z0-9_]* { printf("identfiers: %s\n",yytext); }
[0-9]+   { printf("Number: %s\n",yytext); }
"("      { printf("Left Pranthesis\n"); }
")"      { printf("Right pranth\n"); }
";"      { printf("semicolon\n"); }
"="      { printf("Equal\n"); }
"+"      { printf("Plus\n"); }
","      { printf("comma\n"); }
"%"      { printf("Mudolo\n"); }
"#"      { printf("Hash\n"); }
">"      { printf("Greaterthan\n"); }
"<"      { printf("Lessthen\n"); }

%%



int yywrap(){}

int main(){
yyin = fopen("z.txt", "r");
yyout = fopen("zal.txt", "w");
yylex();
return 0;
}
