-- Create pairings of players so they're randonmlly matched up
createPairings = function (players)
	print("Creating pairings");
	Pairings = {};

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
		print(format("%s pairing %s vs %s", k, v[1], v[2]));
	end
end
