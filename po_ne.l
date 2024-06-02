%{
#include <stdio.h>
%}

%%
[+-]?[0-9]+  {
		int n=atoi(yytext);
		if(n>0) {
			printf("%d is a positive number\n",n);
	
		}  else if(n<0){
			printf("%d is a negative number\n",n);
		
		}  else{
			printf("%d is neither positive or negative\n",n);


		}
	     }

.           { printf("Invalid input\n"); }

%%

int main(){
yylex();
return 0;
}
