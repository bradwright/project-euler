-module(euler_three).
-export([main/0]).
%% The prime factors of 13195 are 5, 7, 13 and 29.
%% What is the largest prime factor of the number 600851475143 ?

%% We know 1 and X are factors
factors(X) when X >= 1 ->
    factors(X, 2, [1, X]).

factors(X, Y, F) when X =:= Y ->
    lists:sort(F);
factors(X, Y, F) when X rem Y =:= 0 ->
    factors(X, Y + 1, F ++ [Y]);
factors(X, Y, F) ->
    factors(X, Y + 1, F).

main() ->
    factors(6009).
