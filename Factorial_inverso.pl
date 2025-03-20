factorial_inverso(1,0).
factorial_inverso(1,1):- !.

factorial_inverso(X,Y):-
    X>1,
    auxiliar(X,1,1,Y).

auxiliar(N,X,Fact,X):-
    N=:=Fact, !.

auxiliar(N,X,Fact,Res):-
    Fact<N,
    X1 is X+1,
    Fact1 is Fact*X1,
    auxiliar(N,X1,Fact1,Res).
