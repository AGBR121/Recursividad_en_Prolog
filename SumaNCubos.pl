suma_n_cubos(0,0).
suma_n_cubos(N, S) :-
    N > 0,
    N1 is N - 1,
    suma_n_cubos(N1, S1),
    S is N * N * N + S1.