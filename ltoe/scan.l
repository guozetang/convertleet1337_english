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

" "      	  		return BLANK;
[ \t\n]		  		return NEWLINE;
.			  		{}
%%

int yywrap(void)
{
	return 1;
}
