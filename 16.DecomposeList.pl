start:- writeall(["hi world",2,hello,[50,60]]).

writeall([]).
writeall([A|L]):- write(A),nl,writeall(L).
