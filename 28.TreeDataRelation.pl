%		            a
%		            +
%		            |
%	    +--------------------------------+
%	    |               |                |
%	    b               c                d
%	    +               +                +
%	    |               |                |
%	+---+--+      +-------------+        |
%	|      |      |     |       |        |
%	e      f      g     h       i        j
%	+      +            +       +        +
%	|      |            |       |        |
%	|   +--+--+         |    +--+--+   +-+-+---+
%	|   |     |         |    |     |   |   |   |
%	k   l     m         n    o     p   q   r   s
%		  +
%		  |
%		  t

%-------------------------------------------------------------------
%	The Tree Database
:- op(500,xfx,'is_parent_of').

a is_parent_of b.	a is_parent_of c.	a is_parent_of d.
b is_parent_of e.	b is_parent_of f.
c is_parent_of g.	c is_parent_of h.	c is_parent_of i.
d is_parent_of j.
e is_parent_of k.
f is_parent_of l.	f is_parent_of m.
h is_parent_of n.
i is_parent_of o.	i is_parent_of p.
j is_parent_of q.	j is_parent_of r.	j is_parent_of s.
m is_parent_of t.

%-------------------------------------------------------------------
%	X & Y are sibling

:- op(500,xfx,'is_sibling_of').

X is_sibling_of Y:- Z is_parent_of X,
		    Z is_parent_of Y,
		    X \== Y.

%-------------------------------------------------------------------
%	Node Grounded		    
leaf_node(N):- \+ is_parent_of(N,C). 		   

%-------------------------------------------------------------------
%	X & Y are on same level

:- op(500,xfx,'is_on_same_level').

X is_on_same_level Y:- Z1 is_parent_of X,
		       Z2 is_parent_of Y,
		       Z1 is_on_same_level Z2.
X is_on_same_level X.		       

%-------------------------------------------------------------------
%	draw path from root to node N
path(a).
path(N):- P is_parent_of N,
	  path(P),
	  write(P),
	  write("->").

locate(N):- path(N),
	    write(N),
	    nl.

%-------------------------------------------------------------------	    
%	Depth of node (from top)

depth(a,0).
depth(N,D):- P is_parent_of N,
	     depth(P,DP),
	     D is DP+1.

%-------------------------------------------------------------------	    
%	Height of node from buttom

height(N,H):- setof(H1,ht(N,H1),Set),
	      max(Set,0,H).

ht(N,0):- leaf_node(N),!.
ht(N,H):- N is_parent_of C,
	  ht(C,HC),
	  H is HC + 1.

max([],M,M).
max([H|T],M,A):- H>M -> max(T,H,A) ; max(T,M,A).

















