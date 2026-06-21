-module(oas_utils_ffi).
-export([merge/1]).

merge(JsonList) ->
    Map =
    lists:foldl(
        fun(Json , Acc)->
            A = gleam_json_ffi:json_to_string(Json),
            maps:merge(json:decode(A), Acc)
        end,
        #{},
        JsonList
    ),
    json:encode(Map).
