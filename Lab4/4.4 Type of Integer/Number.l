%{
//macro
%}
integer [0-9]*
floating {integer}*[.]{integer}*
%%
{integer} {printf ("%s is INTEGER ",yytext);};
{floating} {printf ("%s is Floating point number",yytext);};
.* {printf ("%s is invalid number",yytext);};
%%
int main()
{
 yylex();
}
int yywrap(void)
{
 return 0;
}
