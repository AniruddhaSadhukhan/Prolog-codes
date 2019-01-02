start:- insertion_sort([20,10,15,25,5],L),write(L).

insertion_sort([H|T],S):- insertion_sort(T,L),
			  insertItem(H,L,S).
insertion_sort([],[]).

insertItem(X,[H|T],[H|R]):- H<X,
			    insertItem(X,T,R).
insertItem(X,L,[X|L]).
