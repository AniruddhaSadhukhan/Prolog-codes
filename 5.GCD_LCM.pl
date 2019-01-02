start:- lcm(12,18,X),write(X),nl.


gcd(X,0,X).
gcd(X,Y,Z):- 	Y1 is X mod Y,
		gcd(Y,Y1,Z).

lcm(X,Y,Z):-	gcd(X,Y,G), Z is X*Y/G.

%gcd(81,153,X)
%gcd(153,81,X)
%gcd(81,72,X)
%gcd(72,9,X)
%gcd(9,0,X)
