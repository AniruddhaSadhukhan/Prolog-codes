start:- range(10,20,L),write(L),nl.

range(A,A,[A]).
range(A,B,[A|L]):- A<B,
		   A1 is A+1,
		   range(A1,B,L).
