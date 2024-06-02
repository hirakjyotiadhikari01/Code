%{
#include <stdio.h>
int p=0,q=0;
%}

%%

[+-]?[0-9]  {
			int n=atoi(yytext);
			if(n>0){
				 p++;
			} else if(n<0){
				 q++; 	

			} else {
				printf("Is neither a positive or negative number");
			}

	    }
.			{ printf("Invalid"); }

%%

int main(){
yylex();
return 0;
}
