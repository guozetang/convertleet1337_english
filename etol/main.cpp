#include <stdio.h>

#include "main.h"

extern int yylex();
extern int yylineno;
extern char *yytext;

const static std::string leet[53] = {"1",
									 "α", "β", "ς", "δ", "ε", "ƒ", "g",
									 "|-|", "ι", "j", "|<", "ℓ", "JVL", "η",
									 "{}", "ρ", "φ", "|?", "§", "τ",
									 "μ", "\\//", "ω", "χ", "λ", "ζ",
									 "ɐ", "q", "ɔ", "|>", "ǝ", "ɟ", "ɓ",
									 "ɥ", "ı", "ɾ", "ʞ", "ן", "ɯ", "u",
									 "o", "d", "b", "ɹ", "s", "ʇ",
									 "n", "ʌ", "ʍ", "><", "ʎ", "'/_"};

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
			std::cout << leet[ntoken];
			break;
		default:
			printf("Syntax error in line %d\n", yylineno);
		}
		ntoken = yylex();
	}

	return 0;
}