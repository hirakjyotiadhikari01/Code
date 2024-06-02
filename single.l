%{
#include <stdio.h>
char stack[1000]={'\0'};
int top=-1;
void val();
%}

%%
[-+*/]*[A-Za-z0-9]*[-+*/]*  { for(int i=0;yytext[i]!='\0';i++) stack[++top]=yytext[i]; }
\n { val(); return 0; }

%%

void val(){
	  int op=0;
	  char lastscanned='\0';
	  while(stack[top]!='\0'){
			if((stack[top]<65 || stack[top]>122) && (stack[top]<48 || stack[top]>57) && lastscanned=='\0'){
				printf("Invalid Expression\n");
				return ;
			}

			switch(stack[top]){
					case '-': case '+' : case '*' : case '/':
					op++;
					if(stack[top]=='-' || stack[top]=='+' && top==0){
						printf("Invalid Expr\n");
						return ;
					}
					else if(lastscanned=='-' || lastscanned=='+' || lastscanned=='/' || lastscanned=='*'){
						printf("Invalid Expr\n");
						return ;
					}
					else{
						lastscanned=stack[top--];
					}
					break;
				default:
					lastscanned=stack[top--];
	}
}

if(op==0){
	printf("Invalid Expr\n");
	return ;
}



printf("\nExpr is valid\n");
top=-1;
}
int main(void){
yylex();
printf("Expr: %s\n",stack);
return 0;
}

