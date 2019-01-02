join(A,B,C,S):- string_concat(A,B,X),
		string_concat(X,C,S).
