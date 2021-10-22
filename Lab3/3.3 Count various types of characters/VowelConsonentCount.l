%{
#include <stdio.h>
int VowelCount=0;
int ConsonantCount=0;
int DigitCount=0;
int WSCount=0;
int otherCount=0;
%}
WS [ ]
Vowel [AEIOUaeiou]
Consonant [B-DF-HJ-NP-TV-Zb-df-hj-np-tv-z]
digit [0-9]
%%
{Vowel} {VowelCount++;};
{Consonant} {ConsonantCount++;};
{digit} {DigitCount++;};
{WS} {WSCount++;};
. {otherCount++;};
"\n" {printf("No of Vowel :%d  Consonant: %d  Digit: %d WhiteSpace: %d Other character:%d\n", VowelCount,ConsonantCount,DigitCount,WSCount,otherCount);};
%%
 
int main()
{
 yylex();
}
int yywrap(void)
{
 return 0;
}
