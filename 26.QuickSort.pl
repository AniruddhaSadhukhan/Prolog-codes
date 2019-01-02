start:- quick_sort([20,10,15,25,5],L),write(L).

quick_sort([H|T],S):- partition(T,H,L,R),
		      quick_sort(L,LS),
		      quick_sort(R,RS),
		      append(LS,[H|RS],S).
quick_sort([],[]).

partition([H|T],P,[H|L],R):- H<P,
			     partition(T,P,L,R).
partition([H|T],P,L,[H|R]):- partition(T,P,L,R).
partition([],P,[],[]).			   		
