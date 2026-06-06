-module(oas_utils_ffi).
-export([merge/1]).

-spec merge(list(#{binary() => json:decode_value()})) -> json:decode_value().
merge(JsonList) ->
    lists:foldl(
        fun(Json, Acc) -> maps:merge(Json, Acc) end,
        #{},
        JsonList
    ).
