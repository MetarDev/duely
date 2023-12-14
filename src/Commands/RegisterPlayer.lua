
SLASH_DUELY_REGISTER_PLAYER1, SLASH_DUELY_REGISTER_PLAYER2, SLASH_DUELY_REGISTER_PLAYER3 = "/duely-register", "/duely-reg", "dulr";
SLASH_DUELY_REGISTER_PLAYER_TARGET1, SLASH_DUELY_REGISTER_PLAYER_TARGET2, SLASH_DUELY_REGISTER_PLAYER_TARGET3 = "/duely-register-target", "/duely-reg-tar", "dulrt";

-- define the corresponding slash command handler
function SlashCmdList.DUELY_REGISTER_PLAYER(msg, editBox)
	local name1 = strsplit(" ", msg);
	if #name1 <= 0 then
		print("Please set the name of theplayer that you want to register");
		return;
	end

	Duely.RegisterPlayer(name1);
end

-- define the corresponding slash command handler
function SlashCmdList.DUELY_REGISTER_PLAYER_TARGET(msg, editBox)
	if not UnitIsPlayer("playertarget") then
		print("Unable to register %s, target isn't a player", GetUnitName("playertarget"));
		return;
 end

	Duely.RegisterPlayer(GetUnitName("playertarget"));
end