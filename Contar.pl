contar(N,1):- N < 10.
contar(X,Y):-
    X>=10,
    X1 is X mod 10,
    contar(X1,Y1),
    Y is Y1 + 1.
    