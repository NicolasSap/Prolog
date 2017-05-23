hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(maria).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maria) .

ni�o(X,Y):-padre(Y,X).

hijo(X,Y):-hombre(X),padre(Y,X).

hija(X,Y):-mujer(X),padre(Y,X).

hermano_o_hermana(X,Y):-ni�o(X,Z),ni�o(Y,Z),dif(X,Y).

hermano(X,Y):-hijo(X,Z),ni�o(Y,Z),dif(X,Y).

hermana(X,Y):-hija(X,Z),ni�o(Y,Z),dif(X,Y).



