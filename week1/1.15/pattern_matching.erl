%%
%% Pattern matching
%% - Functional Programming in Erlang
%% Activity 1.15
%%
%% Daniel Ribes
%%

-module(pattern_matching).
-export([maxThree/3,
         howManyEqual/3,
         xOR/3, 
         test_maxThree/0,
         test_howManyEqual/0,
         test_xOR/0
        ]).


%%
%% Maximum of three
%%
maxThree(A, B, C) ->
    max(max(A, B), C).


%%
%% How many equal?
%%
howManyEqual(A, A, A) -> 3;
howManyEqual(A, A, _) -> 2;
howManyEqual(_, A, A) -> 2;
howManyEqual(A, _, A) -> 2;
howManyEqual(_, _, _) -> 0.


%%
%% XOR
%%
xOR(A, B, operator) ->
    A =/= B;

xOR(A, B, negation) ->
    not (A == B);

xOR(A, B, bool) ->
   (A and not B) or (B and not A).

%%
%% Tests
%%
test_maxThree() ->
    2 = maxThree(0,1,2),
    7 = maxThree(7,4,3),
    6500 = maxThree(5,6500,80),
    ok_maxThree.

test_howManyEqual() ->
    3 = howManyEqual(7, 7, 7),
    2 = howManyEqual(5, 5, 1),
    2 = howManyEqual(3, 4, 4),
    2 = howManyEqual(78, 2, 78),
    0 = howManyEqual(1, 4, 7),
    ok_howManyEqual.


test_xOR() ->
    true = xOR(3, 4, operator),
    true = xOR(7, 8, negation),
    false = xOR((5 > 2), (7 < 12), bool),
    true = xOR(8, 9, operator),
    ok_xOR.