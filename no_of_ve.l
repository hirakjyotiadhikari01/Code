%{
#include <stdio.h>
%}

%%
[0-9]+  { 
    		int n=atoi(yytext);
		
		if(n%2==0){
			printf("Is a even number\n");
		
		} else {
			printf("Is an odd number\n");
		}
	
	}

.       { printf("Invalid"); }

%%

int main(){
yylex();
return 0;
}
