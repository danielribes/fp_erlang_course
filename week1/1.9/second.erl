%%
%% second.erl
%% - Functional Programming in Erlang
%% Activity 1.9
%%
%% Daniel Ribes
%%

-module(second).
-export([hypotenuse/2, perimeter/2, perimeter/3, area/2]).

%%
%% Hypotenuse of a right-angled triangle
%%
hypotenuse(A, B) ->
    H = first:square(A) + first:square(B),
    math:sqrt(H).

%%
%% Area of a right-angled triangle
%%
area(A, B) ->
    B * A / 2.

%%
%% Perimeter of a right-angled triangle
%%

%% - without knowing Hypotenuse
perimeter(A, B) -> 
    A + B + hypotenuse(A, B).

%% - with Hypotenuse
perimeter(A, B, H) ->
    A + B + H.
