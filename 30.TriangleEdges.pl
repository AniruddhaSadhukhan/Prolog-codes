triangle(A,B,C):- A>0,
		  B>0,
		  C>0,
		  A<B+C,
		  B<A+C,
		  C<A+B.
