registerPlayer = function (name)
	for k,v in pairs(RegisteredPlayers) do
		if ( v == name ) then
			print(format("%s is already registered", name));
			return;
		end
	end

	print(format("Registered %s for tournament", name));
	table.insert(RegisteredPlayers, 1, name);
end

listPlayers = function ()
	print("Registered Players:");
	for k,v in pairs(RegisteredPlayers) do
		print(format("%s value: %s", k, v));
	end
end

flushPlayers = function ()
	RegisteredPlayers = {};
end

-- Create pairings of players so they're randonmlly matched up
createPairings = function (players)
	Pairings = Pairings or {};

	-- If there's an odd number of players, add a bye
	if ( #players % 2 == 1 ) then
		table.insert(players, "Bye");
	end

	-- Shuffle the players
	for i = #players, 2, -1 do
		local j = math.random(i);
		players[i], players[j] = players[j], players[i];
	end

	-- Create the pairings
	for i = 1, #players, 2 do
		table.insert(Pairings, {players[i], players[i+1]});
	end

end


listPairings = function ()
	print("Pairings:");
	for k,v in pairs(Pairings) do
		print(format("%s value: %s", k, v));
	end
end

-- Do stuff
RegisteredPlayers = RegisteredPlayers or {};