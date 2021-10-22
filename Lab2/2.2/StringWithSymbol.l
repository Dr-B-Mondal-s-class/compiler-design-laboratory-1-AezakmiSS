%{
// macros for c program
%}
NormalString [A-Za-z]+
%%
{NormalString} {printf ("String with only Alphabet");};
.* {printf("String with other character other than Alphabet");};
%%
 
int main()
{
 yylex();
}
int yywrap(void)
{
 return 0;
}
