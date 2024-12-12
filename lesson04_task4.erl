-module(lesson04_task4).
-export([run_tests/1]).

run_tests(Tool) ->
    case Tool of
        rebar3 -> os:cmd("rebar3 ct");
        rebar2 -> os:cmd("rebar ct");
        erlang_mk -> os:cmd("make ct");
        _ -> {error, unsupported_tool}
    end.
