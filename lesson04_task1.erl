-module(lesson04_task1).
-export([setup_structure/0]).

setup_structure() ->
    Directories = ["src", "include", "priv", "test"],
    lists:foreach(fun file:make_dir/1, Directories).
