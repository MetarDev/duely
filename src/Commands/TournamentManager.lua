
SLASH_DUELY_CREATE_PAIRINGS1 = "/duely-create-pairing";
SLASH_DUELY_LIST_PAIRINGS1 = "/duely-list-pairing";

function SlashCmdList.DUELY_CREATE_PAIRINGS(msg, editBox)
	createPairings(RegisteredPlayers);
end

function SlashCmdList.DUELY_LIST_PAIRINGS(msg, editBox)
	listPairings();
end
