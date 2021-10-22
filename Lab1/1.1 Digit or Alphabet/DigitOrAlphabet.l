%{
//macro
%}
letter [A-Za-z]
digit [0-9]
%%
[0-9]+ {printf ("digit");};
[A-Za-z]+ {printf("Alphabet");};
%%
 
int main()
{
 yylex();
}
int yywrap(void)
{
 return 0;
}
