%{
#include <stdio.h>
#include <stdlib.h>
double a,b;
int o=0,c=0;
void cal();
%}

%%
[0-9]+ { cal(); }
[+] { o=1; }
[-] { o=2; }
[*] { o=3; }
[/] { o=4; }
exit { return 0; }

%%

void cal(){
		if(c==0){
			 a=atoi(yytext);
			 c++;
		} else if(c>0) {
			 b=atoi(yytext);
	        }
		switch(o){
			      case 1:
					a=a+b;
					printf("Result: %.2lf\n",a);
					a=b=0.0;
					c=0;
					o=0;
					break;
			      case 2:
					a=a-b;
                                        printf("Result: %.2lf\n",a);
                                        a=b=0.0;
                                        c=0;
                                        o=0;
                                        break;
			      case 3:
					a=a*b;
                                        printf("Result: %.2lf\n",a);
                                        a=b=0.0;
                                        c=0;
                                        o=0;
                                        break;
			      case 4:
					a=a/b;
                                        printf("Result: %.2lf\n",a);
                                        a=b=0.0;
                                        c=0;
                                        o=0;
                                        break;
		}
}

int main(){
yylex();
return 0;
}
