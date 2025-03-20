suma_n_cubos(0,0).
suma_n_cubos(X,S):-
    X>0,
    X1 is X-1,
    suma_n_cubos(X1,S1),
    S is X*X*X +S1, !.