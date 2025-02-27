invertir(X, Y) :- invertir_aux(X, 0, Y).
invertir_aux(0, Acc, Acc).
invertir_aux(A, C, B) :-
    A > 0,
    Digito is A mod 10, 
    Resto is A // 10, 
    NuevoAcc is C * 10 + Digito,
    invertir_aux(Resto, NuevoAcc, B).  
