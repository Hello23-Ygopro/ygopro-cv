--Healing Revenger
local scard,sid=aux.GetID()
function scard.initial_effect(c)
	aux.AddClan(c,CLAN_SHADOW_PALADIN)
	aux.AddRace(c,RACE_ANGEL)
	aux.AddSeries(c,SERIES_REVENGER)
	--unit
	aux.EnableUnitAttribute(c)
	--skill icon (boost)
	aux.EnableBoost(c)
end
