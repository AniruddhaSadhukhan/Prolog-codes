start:- factorial(3,X),write(X),nl.
factorial(0,1).
factorial(N,X):-N1 is N-1,
		factorial(N1,Y),
		X is N*Y.
	
