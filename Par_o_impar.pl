impar(1).
impar(X):- X>0, X1 is X-2, impar(X1).

par(0).
par(X):- X>0, X1 is X-2, par(X1).