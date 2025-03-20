factorial_inverso(1,1).

factorial_inverso(X,Y):-
    X > 1,
    factorial_auxiliar(X,1,1,Y).

factorial_auxiliar(N, X, Fact, X) :-
    Fact =:= N, !.  

factorial_auxiliar(N, X, Fact, Res) :-
    Fact < N,   
    X1 is X + 1,
    Fact1 is Fact * X1,
    factorial_auxiliar(N, X1, Fact1, Res).