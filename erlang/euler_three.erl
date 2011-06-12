-module(euler_three).
-export([main/0]).
%% The prime factors of 13195 are 5, 7, 13 and 29.
%% What is the largest prime factor of the number 600851475143 ?

% Return a list of the prime factors of N in arbitrary order.
% http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes#Euler.27s_sieve
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
