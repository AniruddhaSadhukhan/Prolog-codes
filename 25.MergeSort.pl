start:- merge_sort([20,10,15,25,5],L),write(L).

merge_sort([],[]).
merge_sort([A],[A]).
merge_sort([A,B|R],S):- split([A,B|R],L1,L2),
			merge_sort(L1,S1),
			merge_sort(L2,S2),
			merge(S1,S2,S).

split([],[],[]).
split([A],[A],[]).
split([A,B|R],[A|Ra],[B|Rb]):- split(R,Ra,Rb).

merge([],[],[]).
merge([A],[],[A]).
merge([],[B],[B]).
merge([A|Ra],[B|Rb],[A|R]):- A<B,
			     merge(Ra,[B|Rb],R).
merge([A|Ra],[B|Rb],[B|R]):- merge([A|Ra],Rb,R).
