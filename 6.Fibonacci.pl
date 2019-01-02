start:- fib(10),write("\b\b "),nl.

fib(N):- N>1,write('1, 1, '),fib(1,1,2,N).
fib(_,_,N,N).
fib(F0,F1,I,N):- F2 is F0 + F1,
		 write(F2),write(", "),
		 I2 is I + 1,
		 fib(F1,F2,I2,N).
