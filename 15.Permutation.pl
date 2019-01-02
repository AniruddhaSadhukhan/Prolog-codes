del(X,[X|L],L).
del(X,[Y|L1],[Y|L2]):- del(X,L1,L2).

permute([],[]).
permute(L,[X|P]):- del(X,L,L1),
		   permute(L1,P).
