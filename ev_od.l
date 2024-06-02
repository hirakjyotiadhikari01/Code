%{
#include <stdio.h>
%}

%%
[0-9]+  {
	    int n=atoi(yytext);
	    if(n%2==0) {
	               printf("%d is even\n",n);
	    }  else{
		       printf("%d is odd\n",n);
	    }
	}

.      { printf("Invalid input\n"); }

%%

int main(){
yylex();
return 0;
}
