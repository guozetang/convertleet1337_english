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
a	 	return CODE1337_LOWER_A;
b		return CODE1337_LOWER_B;
c		return CODE1337_LOWER_C;
d		return CODE1337_LOWER_D;
e		return CODE1337_LOWER_E;
f		return CODE1337_LOWER_F;
g		return CODE1337_LOWER_G;
h		return CODE1337_LOWER_H;
i		return CODE1337_LOWER_I;
j		return CODE1337_LOWER_J;
k		return CODE1337_LOWER_K;
l		return CODE1337_LOWER_L;
m		return CODE1337_LOWER_M;
n		return CODE1337_LOWER_N;
o		return CODE1337_LOWER_O;
p		return CODE1337_LOWER_P;
q		return CODE1337_LOWER_Q;
r		return CODE1337_LOWER_R;
s		return CODE1337_LOWER_S;
t		return CODE1337_LOWER_T;
u		return CODE1337_LOWER_U;
v		return CODE1337_LOWER_V;
w		return CODE1337_LOWER_W;
x		return CODE1337_LOWER_X;
y		return CODE1337_LOWER_Y;
z		return CODE1337_LOWER_Z;
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

