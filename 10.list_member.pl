start:- list_member(5,[6,7,2,5,3,1]),write("Yes"),nl ; write("No"),nl.

list_member(X,[X|L]):- !.
list_member(X,[Y|L]):- list_member(X,L).
