start:- split([a,b,c,d,e,f,g],e,B,A),write(B),nl,write(A).

split(L,S,B,A):- append(B,[S|A],L).
