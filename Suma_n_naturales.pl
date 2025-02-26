suma(1,1).
suma(N,Y):- N>1, N1 is N-1, suma(N1, Y1), Y is Y1+N.