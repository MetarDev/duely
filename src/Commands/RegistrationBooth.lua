
SLASH_DUELY_FLUSHPLAYERS1, SLASH_DUELY_FLUSHPLAYERS2, SLASH_DUELY_FLUSHPLAYERS3 = "/duely-flush", "/duely-fl", "dulfl";
SLASH_DUELY_LIST_PLAYERS1, SLASH_DUELY_LIST_PLAYERS2, SLASH_DUELY_LIST_PLAYERS3 = "/duely-list", "/duely-ls", "dull";
SLASH_DUELY_REGISTER_PLAYER1, SLASH_DUELY_REGISTER_PLAYER2, SLASH_DUELY_REGISTER_PLAYER3 = "/duely-register", "/duely-reg", "dulr";
SLASH_DUELY_REGISTER_PLAYER_TARGET1, SLASH_DUELY_REGISTER_PLAYER_TARGET2, SLASH_DUELY_REGISTER_PLAYER_TARGET3 = "/duely-register-target", "/duely-reg-tar", "dulrt";

function SlashCmdList.DUELY_FLUSHPLAYERS(msg, editBox)
	flushPlayers();
end


function SlashCmdList.DUELY_LIST_PLAYERS(msg, editBox)
	listPlayers();
end


-- define the corresponding slash command handler
function SlashCmdList.DUELY_REGISTER_PLAYER(msg, editBox)
	local name1 = strsplit(" ", msg);
	if #name1 <= 0 then
		print("Please set the name of theplayer that you want to register");
		return;
	end

	registerPlayer(name1);
end

-- define the corresponding slash command handler
function SlashCmdList.DUELY_REGISTER_PLAYER_TARGET(msg, editBox)
	if not UnitIsPlayer("playertarget") then
		print("Unable to register %s, target isn't a player", GetUnitName("playertarget"));
		return;
 end

	registerPlayer(GetUnitName("playertarget"));
end