--Battle Siren, Dorothea
local scard,sid=aux.GetID()
function scard.initial_effect(c)
	aux.AddClan(c,CLAN_AQUA_FORCE)
	aux.AddRace(c,RACE_MERMAID)
	--unit
	aux.EnableUnitAttribute(c)
	--skill icon (boost)
	aux.EnableBoost(c)
	--gain effect
	aux.AddSingleAutoEffect(c,0,EVENT_CUSTOM+EVENT_BOOST,nil,scard.op1,nil,aux.AttackerCondition(scard.cfilter))
end
--gain effect
function scard.cfilter(c)
	return c:IsFaceup() and c:IsClan(CLAN_AQUA_FORCE) and c:IsVanguard()
end
function scard.op1(e,tp,eg,ep,ev,re,r,rp)
	local c=e:GetHandler()
	if not c:IsRelateToEffect(e) or c:IsFacedown() then return end
	if Duel.GetBattledCount(tp)>=2 then
		--gain power
		aux.AddTempEffectUpdatePower(c,Duel.GetAttacker(),4000,RESET_PHASE+PHASE_DAMAGE)
	end
end
