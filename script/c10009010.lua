--Eradicator, Demolition Dragon
local scard,sid=aux.GetID()
function scard.initial_effect(c)
	aux.AddClan(c,CLAN_NARUKAMI)
	aux.AddRace(c,RACE_THUNDER_DRAGON)
	aux.AddSeries(c,SERIES_ERADICATOR)
	--unit
	aux.EnableUnitAttribute(c)
	--skill icon (boost)
	aux.EnableBoost(c)
	--gain effect
	aux.AddSingleAutoEffect(c,0,EVENT_ATTACK_ANNOUNCE,nil,scard.op1,nil,aux.RCCondition)
end
--gain effect
function scard.op1(e,tp,eg,ep,ev,re,r,rp)
	local c=e:GetHandler()
	if not c:IsRelateToEffect(e) or c:IsFacedown() then return end
	if aux.SelfVanguardCondition(Card.IsSeries,SERIES_ERADICATOR)(e,tp,eg,ep,ev,re,r,rp) then
		--gain power
		aux.AddTempEffectUpdatePower(c,c,3000,RESET_PHASE+PHASE_DAMAGE)
	end
end
--[[
	Note: This card's [AUTO] effect is identical to that of "Eradicator, Spark Rain Dragon".
]]
