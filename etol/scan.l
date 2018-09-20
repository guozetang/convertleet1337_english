%{
#include "main.h"
%}

%option nounput yylineno

%%

A	 	return CODE1337_A;
B		return CODE1337_B;
C		return CODE1337_C;
D		return CODE1337_D;
E		return CODE1337_E;
F		return CODE1337_F;
G		return CODE1337_G;
H		return CODE1337_H;
I		return CODE1337_I;
J		return CODE1337_J;
K		return CODE1337_K;
L		return CODE1337_L;
M		return CODE1337_M;
N		return CODE1337_N;
O		return CODE1337_O;
P		return CODE1337_P;
Q		return CODE1337_Q;
R		return CODE1337_R;
S		return CODE1337_S;
T		return CODE1337_T;
U		return CODE1337_U;
V		return CODE1337_V;
W		return CODE1337_W;
X		return CODE1337_X;
Y		return CODE1337_Y;
Z		return CODE1337_Z;

" "      	  		return BLANK;
[ \t\n]		  		return NEWLINE;
.			  		{}
%%

int yywrap(void)
{
	return 1;
}

