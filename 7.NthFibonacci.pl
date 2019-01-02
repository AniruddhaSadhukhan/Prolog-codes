start:- fib(10,X),write(X),nl.

fib(N,F):- fib(1,1,2,N,F).
fib(_,F2,N,N,F2).
fib(F0,F1,I,N,F):- F2 is F0 + F1,
		   I2 is I + 1,
		   fib(F1,F2,I2,N,F).
