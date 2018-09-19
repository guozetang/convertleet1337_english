%{
#include "main.h"
%}

%option nounput yylineno

%%
"α"	 		return CODE1337_A;
"β"			return CODE1337_B;
"ς"			return CODE1337_C;
"δ"			return CODE1337_D;
"ε"			return CODE1337_E;
"ƒ"			return CODE1337_F;
"g"			return CODE1337_G;
"|-|"		return CODE1337_H;
"ι"			return CODE1337_I;
"j"			return CODE1337_J;
"|<"		return CODE1337_K;
"ℓ"			return CODE1337_L;
"JVL"		return CODE1337_M;
"η"			return CODE1337_N;
"{}"		return CODE1337_O;
"ρ"			return CODE1337_P;
"φ"			return CODE1337_Q;
"|?"		return CODE1337_R;
"§"			return CODE1337_S;
"τ"			return CODE1337_T;
"μ"			return CODE1337_U;
"\\//"		return CODE1337_V;
"ω"			return CODE1337_W;
"χ"			return CODE1337_X;
"λ"			return CODE1337_Y;
"ζ"			return CODE1337_Z;
"ɐ"	 		return CODE1337_LOWER_A;
"q"			return CODE1337_LOWER_B;
"ɔ"			return CODE1337_LOWER_C;
"|>"		return CODE1337_LOWER_D;
"ǝ"			return CODE1337_LOWER_E;
"ɟ"			return CODE1337_LOWER_F;
"ɓ"			return CODE1337_LOWER_G;
"ɥ"			return CODE1337_LOWER_H;
"ı"			return CODE1337_LOWER_I;
"ɾ"			return CODE1337_LOWER_J;
"ʞ"			return CODE1337_LOWER_K;
"ן"			return CODE1337_LOWER_L;
"ɯ"			return CODE1337_LOWER_M;
"u"			return CODE1337_LOWER_N;
"o"			return CODE1337_LOWER_O;
"d"			return CODE1337_LOWER_P;
"b"			return CODE1337_LOWER_Q;
"ɹ"			return CODE1337_LOWER_R;
"s"			return CODE1337_LOWER_S;
"ʇ"			return CODE1337_LOWER_T;
"n"			return CODE1337_LOWER_U;
"ʌ"			return CODE1337_LOWER_V;
"ʍ"			return CODE1337_LOWER_W;
"><"		return CODE1337_LOWER_X;
"ʎ"			return CODE1337_LOWER_Y;
"'/_"			return CODE1337_LOWER_Z;
[0-9]*				return DIGIT;
" "      	  		return BLANK;
"\t"      	  		return BLANK;
"..."				return ELLIPSIS;
['/!:,!-\.?";()—]*	return SYMBOL;
[#“”<>$\\@\[\]]*	return SYMBOL;
[ \t\n]		  		return NEWLINE;
.			  		return NOCHANGE;
%%

int yywrap(void)
{
	return 1;
}
