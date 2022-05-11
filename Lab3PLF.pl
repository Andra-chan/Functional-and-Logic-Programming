lista(N, N, [N]) :- !.
lista(N, I, [I|Rez]) :-
    I1 is I + 1,
    lista(N, I1, Rez).

submultimi([], []).
submultimi([_|T], Rez) :-
    submultimi(T, Rez).
submultimi([H|T], [H|Rez]) :-
    submultimi(T, Rez).

suma([], 0).
suma([H|T], Rez) :-
    suma(T, Rez1),
    Rez is H + Rez1.

consecutive([]) :- true, !.
consecutive([_]) :- true, !.
consecutive([H1, H2|T]) :-
    H1 =:= H2 - 1,
    consecutive([H2|T]).

main(N, Rez) :-
    lista(N, 1, List),
    submultimi(List, Rez),
    consecutive(Rez),
    suma(Rez, Sum),
    Sum =:= N.
