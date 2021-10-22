%{
int Count=0;
%}

%%
. {Count++;};
\n {return 0;};
%%
int main()
{
 yylex();
 printf("Number of Character(s) :%d\n", Count);
}
int yywrap(void)
{
 return 0;
}
