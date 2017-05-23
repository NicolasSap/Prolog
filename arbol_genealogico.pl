hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(maria).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maria) .

niño(X,Y):-padre(Y,X).

hijo(X,Y):-hombre(X),padre(Y,X).

hija(X,Y):-mujer(X),padre(Y,X).

hermano_o_hermana(X,Y):-niño(X,Z),niño(Y,Z),dif(X,Y).

hermano(X,Y):-hijo(X,Z),niño(Y,Z),dif(X,Y).

hermana(X,Y):-hija(X,Z),niño(Y,Z),dif(X,Y).



