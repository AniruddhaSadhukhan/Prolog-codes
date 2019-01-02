%		1---2
%		|\ /|
%		| 3 |
%		|/ \|
%		4---5

edge(1,2).
edge(2,5).
edge(5,4).
edge(4,1).
edge(1,3).
edge(2,3).
edge(5,3).
edge(4,3).

connected(X,Y):- edge(X,Y);edge(Y,X).
