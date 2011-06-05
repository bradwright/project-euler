-module(euler_one).
-export([number_ok/1, main/0]).
%% Project Euler problem 1

%% If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
%% Find the sum of all the multiples of 3 or 5 below 1000.

number_ok([X]) -> number_ok(X);
number_ok(X) when (X rem 5) == 0; (X rem 3) == 0 -> true;
number_ok(_) -> false.

main() ->
    Y = lists:seq(1, 999),
    Z = lists:filter(fun number_ok/1, Y),
    lists:sum(Z).
