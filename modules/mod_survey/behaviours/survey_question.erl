%% @doc Question in a survey.
-module(survey_question).

-callback answer(Block :: term(), Answers :: list(), Context :: z:context()) -> {ok, list()} | {error, atom()}.
-callback prep_chart(Block :: term(), Answers :: list(), Context :: z:context()) -> proplists:proplist().
-callback prep_answer_header(Question :: term(), Context :: z:context()) -> list() | term().
-callback prep_answer(Block :: term(), Answers :: list(), Context :: z:context()) -> term().
-callback prep_block(Block :: term(), Context :: z:context()) -> list().
