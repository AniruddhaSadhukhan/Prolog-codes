start:- inc([10,20,15,5],L),write(L),nl.

inc([],[]).
inc([A|L],[A1|L1]):- A1 is A+1,
		     inc(L,L1).
