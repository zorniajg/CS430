%
% CS 430 P5 (Prolog 1)
%
% Name: Jacob Zorniak
%

parent(X, Y) :- parents(X, _, Y) ; parents(X, Y, _).

step_parent(X, Y) :- parents(X, Q, Z), spouse(Z, Y), \+spouse(Q, Z).

sibling(X, Y) :- parent(X, Z), parent(Y, Z), X\==Y.

aunt_uncle(X, Y) :- parents(X, A, B), (sibling(Y, B) ; sibling(Y, A)).

grandparent(X, Y) :- parent(X, A), parent(A, Y).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

relative(X, Y) :-  sibling(X, Y) ; aunt_uncle(X, Y) ; ancestor(X, Y).

in_law(X, Y) :- spouse(X, A), relative(A, Y).
