subst_lista([],_,[]).
subst_lista([H1|T],L2, L):- substituie(H1,L2,[H1|T],L).

substitutie([],_,[]).
substitutie([H|_], L2, L):- is_list(H),!, subst_lista(H, L2, L).
substitutie([H|T], L2, [H|L]):-  substitutie(T, L2, L).

concatenare([],L,L). %prima ramura
concatenare([H|L1],L2,[H|L3]):-concatenare(L1,L2,L3). %a doua ramura

substituie(_,_,[],[]).	%prima ramura
substituie(E,L,[E|T],R):-substituie(E,L,T,R1),!,
                       concatenare(L,R1,R).	%a doua ramura
substituie(E,L,[H|T],[H|R]):-substituie(E,L,T,R).	%ultima ramura



