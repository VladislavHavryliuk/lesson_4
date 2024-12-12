-module(lesson04_task2).
-export([build_with_tool/1]).

build_with_tool(Tool) ->
    case Tool of
        rebar3 -> erlang:os_cmd("rebar3 do clean, compile");
        rebar2 -> erlang:os_cmd("rebar clean compile");
        erlang_mk -> erlang:os_cmd("make clean all");
        _ -> {error, unsupported_tool}
    end.
