cauta(E, [E|_]).
cauta(E, [_|T]):- cauta(E, T).

intersectie([], _, []).
intersectie([X|M1], M, [X|M2]):- cauta(X, M),
                             intersectie(M1, M, M2).
intersectie([X|M1], M, M2):- not(cauta(X, M)),
                             intersectie(M1,M,M2).

%Teste
%intersectie([1,2,3],[2,3,4],L).
%intersectie([1,2,3],[4,5,6,7],L).
%intersectie([],[],L).
%intersectie([],[1,2],L).
%intersectie([1,2,3],[],L).
