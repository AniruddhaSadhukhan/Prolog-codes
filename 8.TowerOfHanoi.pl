start:- toh(3,"Source      ","Target      ","Intermediate"),nl.

toh(1,S,T,_):- write(S), 
	       write(' -> '), 
	       write(T), 
	       nl.

toh(N,S,T,I):- M is N-1,
	       toh(M,S,I,T),
	       toh(1,S,T,_),
	       toh(M,I,T,S).
