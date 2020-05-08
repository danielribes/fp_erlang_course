%% Functional Programming in Erlang

-module(first).
-export([double/1,mult/2,area/3,treble/1,square/1]).

mult(X,Y) ->

    X*Y.

double(X) ->

    mult(2,X).

area(A,B,C) ->

    S = (A+B+C)/2,

    math:sqrt(S*(S-A)*(S-B)*(S-C)).

%% 
%% Functional Programming in Erlang
%% Activity 1.9
%%

treble(A) ->
    A*3.

square(A) -> 
    A*A.

