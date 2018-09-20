#include <stdio.h>
#include <iostream>
#include <string>
#include <cstring>
#include "main.h"

extern int yylex();
extern int yylineno;
extern char *yytext;

const static char letter[] = "0ABCDEFGHIJKLMNOPQRSTUVWXYZ";

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
		case CODE1337_A ... CODE1337_Z:
			std::cout << letter[ntoken];
			break;
		default:
			printf("Syntax error in line %d\n", yylineno);
		}
		ntoken = yylex();
	}

	return 0;
}
