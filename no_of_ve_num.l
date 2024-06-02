%{
#include <stdio.h>
int p=0,q=0;
%}

%%
[+-]?[0-9]+  { int n=atoi(yytext);
	       if(n>0){
			p++;
	       } else{
			q++;
	       }
             }

.  	     { printf("Invalid input\n"); }
%%

int main(){
yylex();
printf("The number of positive number is %d\n",p);
printf("The number of negative number is %d\n",q);
return 0;
}


