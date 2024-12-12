-module(lesson04_task3).
-export([write_tests/0]).

write_tests() ->
    TestCode = "-module(lesson03_task1_tests_alt).
-export([all/0]).

all() ->
    [test_first_word()].

test_first_word() ->
    BinText = <<\"Alternative text\">>,
    Result = lesson03_task1:first_word(BinText),
    ?assertEqual(Result, <<\"Alternative\">>).
",
    file:write_file("test/lesson03_task1_tests_alt.erl", TestCode).
