numero(1).
numero(2).
numero(3).

productoCartesiano(X,Y):-numero(X),numero(Y).

seleccion(X,Y):-productoCartesiano(X,Y),X<Y.

proyeccion(X):-seleccion(X,_).

maximo(X):-numero(X),not(proyeccion(X)).


postre(flan,80).
postre(helado,50).
postre(tiramisu,110).
postre(jojo,110).
postre(jiji,50).

pCPostre(X,Y):-postre(_,X),postre(_,Y).

sPostre(X,Y):-pCPostre(X,Y),X<Y.

prPostre(X):-sPostre(X,_).

mPostrePrecio(X):-postre(_,X),not(prPostre(X)).

mPostreNombre(X,Y):-postre(Y,X),mPostrePrecio(X).

tripla(X,Y,Z):-numero(X),numero(Y),!,numero(Z).

funcion(X,Y):-X=<0,Y is -X,!.
funcion(X,Y):-X>0,X<1,Y is X,!.
funcion(X,Y):-X>=1,Y is X*X.

factorial(0,1):-!.
factorial(X,F):-X1 is X-1,factorial(X1,F1),F is X*F1.

fibo(1,1):-!.
fibo(2,1):-!.
fibo(X,F):-X1 is X-1,X2 is X1-1,fibo(X1,F1),fibo(X2,F2),F is F1+F2.

esTrian(A,B,C):-A+B>C,B+C>A,A+C>B.

trian(A,B,C,"equilatero"):-esTrian(A,B,C),A==B,A==C,!.
trian(A,B,C,"escaleno"):-esTrian(A,B,C),dif(A,B),dif(A,C),dif(B,C),!.
trian(A,B,C,"isosceles"):-esTrian(A,B,C),((A==B,dif(A,C));(A==C,dif(B,C));(B==C,dif(A,B))),!.
trian(A,B,C,"no es triangulo"):-not(esTrian(A,B,C)).
