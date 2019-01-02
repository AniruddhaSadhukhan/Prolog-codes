start:- binary_search([5,10,15,20,25],0),write("Present"),!; write("Not Found").

binary_search(L,V):- div(L,_,[V|_]).
binary_search(L,V):- div(L,_,[C|B]),
		     C<V,
		     binary_search(B,V).
binary_search(L,V):- div(L,A,[C|_]),
		     binary_search(A,V).

div(L,A,B):- append(A,B,L),
	    length(A,La),
	    length(B,Lb),
	    Lb>=La,
	    Lb-La=<1.		   		  
