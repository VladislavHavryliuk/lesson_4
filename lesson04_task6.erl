-module(lesson04_task6).
-export([fib/1]).

fib(N) when N >= 0 ->
    fib(N, 0, 1).

fib(0, A, _) ->
    A;
fib(N, A, B) ->
    fib(N - 1, B, A + B).
