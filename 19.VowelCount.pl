start:- vowel_count([a,b,c,e,i,c,o,e,i,s,a],X),write(X).

vowel(X):- member(X,[a,e,i,o,u]).

vowel_count([],0).
vowel_count([X|L],N):- vowel(X),
		       vowel_count(L,N1),
		       N is N1+1,
		       !.
vowel_count([X|L],N):- vowel_count(L,N).
