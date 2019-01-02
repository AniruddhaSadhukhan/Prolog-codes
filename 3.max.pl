start:- max(5,20,15),nl.
max(X,Y,Z):- 	(X>Y,X>Z ,!, write(X));
		(Y>Z ,!, write(Y));
		write(Z).
	
