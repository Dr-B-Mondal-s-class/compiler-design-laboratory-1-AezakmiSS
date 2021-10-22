%{
// macro 
%}


vowel[aeiouAEIOU]
consonant [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]
alphabet [A-Za-z]
 
%%
{vowel}+ {printf ("vowel");};
{consonant}+ {printf("consonant");};
{alphabet}+ {printf("contains both vowel and consonant ");};
.*+ {printf("contains a character which is not an alphabet");};
%%
 
int main()
{
 yylex();
}
int yywrap(void)
{
 return 0;
}
