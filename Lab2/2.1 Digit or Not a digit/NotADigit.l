%{
//macro
%}
NotADigit [0-9A-Za-z]([0-9A-Za-z !-/])+
digit [0-9]
%%
{digit} {printf ("digit");};
{NotADigit} {printf("Not a digit");};
%%
int main()
{
 yylex();
}
int yywrap(void)
{
 return 0;
}
