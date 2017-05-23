entrada(paella).
entrada(gazpacho).
entrada(consome).

carne(fileto_de_cerdo).
carne(pollo_asado).


pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

bebida(cerveza).
bebida(agua_mineral).
bebida(vino).

platoPrincipal(X):-carne(X);pescado(X).
esMenu(X,Y,Z,A):-entrada(X),platoPrincipal(Y),postre(Z),bebida(A).

menuNoFlan(X,Y,Z,A):-entrada(X),platoPrincipal(Y),postre(Z),bebida(A),dif(Z,flan).


