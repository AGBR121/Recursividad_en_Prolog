potencia(_,0,1).
potencia(X,1,X).
potencia(X,Y,Z):- Y>0, Y1 is Y-1, potencia(X,Y1,Z1), Z is Z1*X.