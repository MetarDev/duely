Duely.RegisterPlayer = function (name)
	for k,v in pairs(RegisteredPlayers) do
		if ( v == name ) then
			print(format("%s is already registered", name));
			return;
		end
	end

	print(format("Registered %s for tournament", name));
	table.insert(RegisteredPlayers, 1, name);
end

Duely.ListPlayers = function ()
	print("Registered Players:");
	for k,v in pairs(RegisteredPlayers) do
		print(format("%s value: %s", k, v));
	end
end