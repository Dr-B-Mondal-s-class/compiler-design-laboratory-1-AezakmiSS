%{
// macros for c program
%}
CapitalString [A-Z]+
SmallString [a-z]+
%%
{CapitalString} {printf ("String with only Capital Letter(s)");};
{SmallString} {printf ("String with only Small letter(s)");};
.* {printf("String with mix of character(s)");};
%%
 
int main()
{
 yylex();
}
int yywrap(void)
{
 return 0;
}
