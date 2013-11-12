-module (what_the_if).
-export ([heh_fine/0, help_me/1, oh_god/1, beach/1]).

heh_fine() ->
	if 1 =:= 1 -> 
		works
	end,
	if 1 =:= 2; 1 =:= 1 ->
		works
	end,
	if 1 =:= 2, 1 =:= 1 ->
		fails
	end.
	
help_me(Animal) ->
	Talk = if Animal == cat -> "meow";
			  Animal == beef -> "mooo";
			  Animal == dog	-> "bark";
			  Animal == macaco -> "programar";
			  true -> "vai pra pqp"
		   end,
	{Animal, "says " ++ Talk ++ "!"}.

oh_god(N) ->
	if N =:= 2 -> sucesso;
		true -> vai_pra_pqp
	end.