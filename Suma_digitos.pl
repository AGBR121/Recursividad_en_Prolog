sumar(0,0).
sumar(X,Y):-
X>0,
Last is X mod 10,
New is X // 10,
sumar(New, Y1),
Y is Last+Y1.