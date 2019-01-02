start:- nth(3,[10,20,15,5],X),write(X),nl.

nth(1,[X|_],X).
nth(N,[A|L],X):- N1 is N-1,
		 nth(N1,L,X).
