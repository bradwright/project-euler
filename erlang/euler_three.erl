-module(euler_three).
-export([main/0]).
%% The prime factors of 13195 are 5, 7, 13 and 29.
%% What is the largest prime factor of the number 600851475143 ?

%% We know 1 and X are factors
factors(X) when X >= 1 ->
    factors(X, 2, [1, X]).

%% We're at the end
factors(X, Y, F) when X =:= Y ->
    lists:sort(F);
%% when remainder is 0 we have a factor
factors(X, Y, F) when X rem Y =:= 0 ->
    factors(X, Y + 1, F ++ [Y]);
%% not a factor, increment and carry on
factors(X, Y, F) ->
    factors(X, Y + 1, F).

% Return a list of the prime factors of N in arbitrary order.
factor(N) when is_integer(N), 1 < N ->
    factor(N, 2, []).

factor(N, D, Factors) ->
    if
        N < D*D       -> [N|Factors];
        0 =:= N rem D -> factor(N div D, D, [D|Factors]);
        true          -> factor(N, D + 1, Factors)
    end.

main() ->
    X = 600851475143,
    lists:sort([1] ++ factor(X) ++ [X]).
