#include <stdio.h>

#include "main.h"

extern int yylex();
extern int yylineno;
extern char *yytext;

const static char letter[] = "0ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

int main(void)
{
	int ntoken;
	ntoken = yylex();
	while (ntoken)
	{
		switch (ntoken)
		{
		case NEWLINE:
			std::cout << std::endl;
			break;
		case BLANK:
			std::cout << " ";
			break;
		case DIGIT:
		case ELLIPSIS:
		case SYMBOL:
		case NOCHANGE:
			std::cout << yytext;
			break;
		case CODE1337_A ... CODE1337_LOWER_Z:
			std::cout << letter[ntoken];
			break;
		default:
			printf("Syntax error in line %d\n", yylineno);
		}
		ntoken = yylex();
	}

	return 0;
}
