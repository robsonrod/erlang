-module (macros_test).
-export ([rem_minus/2]).
-define (sub(X,Y), X-Y).

rem_minus(A, B) ->
	?sub(A rem B, 9).

