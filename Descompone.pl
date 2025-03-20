% Definición de la relación descompone/3
descompone(N, X, Y) :-
    descompone_aux(N, 1, X, Y).

% Caso base: si X^3 > N, detenemos la búsqueda
descompone_aux(N, XCubed, X, Y) :-
    XCubed3 is XCubed * XCubed * XCubed,
    XCubed3 > N,
    !, false.

% Caso recursivo: buscamos Y tal que X^3 + Y^3 = N
descompone_aux(N, XCubed, X, Y) :-
    XCubed3 is XCubed * XCubed * XCubed,
    XCubed3 =< N,
    YCubed3 is N - XCubed3,
    YCubed is round(YCubed3 ** (1/3)),
    Y is YCubed * YCubed * YCubed,
    XCubed3 + Y =:= N,
    X = XCubed3,
    X =< Y.

% Si no se encuentra en este paso, continuamos con el siguiente valor de XCubed
descompone_aux(N, XCubed, X, Y) :-
    XCubed3 is XCubed * XCubed * XCubed,
    XCubed3 =< N,
    NextXCubed is XCubed + 1,
    descompone_aux(N, NextXCubed, X, Y).