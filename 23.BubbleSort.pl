start:- bubble_sort([20,10,15,25,5],L),write(L).

bubble_sort(U,S):- swap(U,L),
		   bubble_sort(L,S).
bubble_sort(S,S).

swap([X,Y|L],[Y,X|L]):- X>Y.
swap([Z|L],[Z|L2]):- swap(L,L2).
