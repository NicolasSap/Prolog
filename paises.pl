esUnPais(argentina).
esUnPais(brasil).
esUnPais(paraguay).
esUnPais(uruguay).
esUnPais(bolivia).
esUnPais(chile).
esUnPais(estados_unidos).
esUnPais(alaska).
esUnPais(groenlandia).
esUnPais(venezuela).

limita_con(argentina,chile).
limita_con(argentina,brasil).
limita_con(argentina,uruguay).
limita_con(argentina,bolivia).
limita_con(argentina,paraguay).
limita_con(estados_unidos,alaska).
limita_con(estados_unidos,groenlandia).
limita_con(brasil,venezuela).
limita_con(chile,peru).


sonLimitrofes(X,Y):-limita_con(X,Y);limita_con(Y,X).

sonTL(X,Y):-sonLimitrofes(X,Z),sonLimitrofes(Z,Y),not(sonLimitrofes(X,Y)),dif(X,Y).


