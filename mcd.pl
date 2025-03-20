mcd(A,0,A) :- !.
mcd(A,B,C) :- A>B, B>0, R is A mod B, mcd(B,R,C).