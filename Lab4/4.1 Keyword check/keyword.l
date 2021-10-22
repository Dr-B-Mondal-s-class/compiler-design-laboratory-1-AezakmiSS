%{
//macro
%}
keyword int|char|bool|if|else|class|for|while|switch|float|typedef|double|long|new|delete|break|define|ifndef
%%
{keyword} {printf ("%s is the c++ keyword ",yytext);};
.* {printf("%s is Not a  c++ keyword", yytext);};
%%
int main()
{
 yylex();
}
int yywrap(void)
{
 return 0;
}
