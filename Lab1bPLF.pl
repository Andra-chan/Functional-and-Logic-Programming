conversie(M,N,L) :- M>N, L=[].
conversie(M,N,L) :- M=N, L=[M].
conversie(M,N,[H|T]) :- M<N, H is M,A is M+1, conversie(A,N,T).
