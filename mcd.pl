mcd(A,0,A):- !.
mcd(A,B,C):- B>0, R is A mod B, mcd(B,R,C).