odd_even(X):- X mod 2 =:= 0, write("Even").
odd_even(X):- write("Odd").

start:- odd_even(5),nl,odd_even(22),nl.
	
