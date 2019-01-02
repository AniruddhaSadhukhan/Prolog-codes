%		                M F
%		               +---+
%		               |a|b|
%		               +---+
%		                 |
%	     +-------------------------------------+
%	     |                   |                 |
%	     |                   |                 |
%	    ++--+               ++--+           +--++
%	    |c|d|               |e|f|           |g|h|
%	    +---+               +---+           +---+
%	      |                   |
%	 +----+----+              |
%	 |         |              |
%	++--+     ++--+          ++--+
%	|i|j|     |k|l|          |m|n|
%	+---+     +---+          +---+

%----------------------------------------------------------------------------
%	The Family Database

%	Gender
male(a). male(c). male(e). male(g). male(i). male(k). male(m).
female(b). female(d). female(f). female(h). female(j). female(l). female(n).

%----------------------------------------------------------------------------
%	Father
:- op(500,xfx,'is_father_of').

a is_father_of c. 	a is_father_of e. 	a is_father_of h.
c is_father_of i. 	c is_father_of k.
e is_father_of m.

%----------------------------------------------------------------------------
%	Husband
:- op(500,xfx,'is_husband_of').

a is_husband_of b.	c is_husband_of d. 	e is_husband_of f. 
g is_husband_of h. 	i is_husband_of j. 	k is_husband_of l. 
m is_husband_of n.

%----------------------------------------------------------------------------
%	Mother

mother(X,Y):- Z is_father_of Y,
	      Z is_husband_of X.

%----------------------------------------------------------------------------
%	Brother

brother(X,Y):-	Z is_father_of X,
		Z is_father_of Y,
		X \== Y,
		male(X).
		      
%----------------------------------------------------------------------------
%	BrothersList

listBrothers(X):- brother(Z,X),
		  write(Z),
		  write(" ").

%----------------------------------------------------------------------------
%	Sister

sister(X,Y):-	Z is_father_of X,
		Z is_father_of Y,
		X \== Y,
		female(X).
		      
%----------------------------------------------------------------------------
%	SistersList

listSisters(X):- sister(Z,X),
		 write(Z),
		 write(" ").
	     
%----------------------------------------------------------------------------
%	Grandfather

grandfather(X,Z):- Y is_father_of X,
		   Z is_father_of Y.
		  
%----------------------------------------------------------------------------
%	Grandmother

grandmother(X,M):- Y is_father_of X,
		   Z is_father_of Y,
		   Z is_husband_of M.		

%----------------------------------------------------------------------------
%	listGrandsons

listGrandsons(X):- male(X),
		   X is_father_of Y,
		   Y is_father_of Z,
		   male(Z),
		   write(Z),
		   write(" ").
listGrandsons(X):- female(X),
		   Z is_husband_of X,
		   listGrandsons(Z).

%----------------------------------------------------------------------------
%	listGranddaughter
listGranddaughters(X):- male(X),
		   	X is_father_of Y,
		   	Y is_father_of Z,
		   	female(Z),
		   	write(Z),
		   	write(" ").
listGranddaughters(X):- female(X),
		   	Z is_husband_of X,
		   	listGranddaughters(Z).
		   	
%----------------------------------------------------------------------------
%	uncle

uncle(X):- Z is_father_of X,
	   brother(Y,Z),
	   write(Y).

%----------------------------------------------------------------------------
%	aunt

aunt(X):- Z is_father_of X,
	  sister(Y,Z),
	  write(Y).		   	

%----------------------------------------------------------------------------
%	cousin

cousin(X):- Z is_father_of X,
	    V is_father_of Y,
	    Z \== V,
	    brother(V,Z),
	    write(Y).




















