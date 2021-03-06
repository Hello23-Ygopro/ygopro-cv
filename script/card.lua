--Temporary Card functions
--check if a card has a given setname
--Note: Overwritten to check for an infinite number of setnames
local card_is_set_card=Card.IsSetCard
function Card.IsSetCard(c,...)
	local setname_list={...}
	for _,setname in ipairs(setname_list) do
		if card_is_set_card(c,setname,...) then return true end
	end
	return false
end
--Overwritten Card functions
--get a card's current grade
--Note: Overwritten to check for the correct value if it is changed while the card is not in LOCATION_MZONE
local card_get_level=Card.GetLevel
function Card.GetLevel(c)
	local res=c:GetOriginalGrade()
	local t1={c:IsHasEffect(EFFECT_UPDATE_GRADE)}
	for _,te1 in pairs(t1) do
		if type(te1:GetValue())=="function" then
			res=res+te1:GetValue()(te1,c)
		else
			res=res+te1:GetValue()
		end
	end
	local t2={c:IsHasEffect(EFFECT_CHANGE_GRADE)}
	for _,te2 in pairs(t2) do
		if type(te2:GetValue())=="function" then
			res=te2:GetValue()(te2,c)
		else
			res=te2:GetValue()
		end
	end
	return res
end
Card.GetGrade=Card.GetLevel
--check if a card's grade is equal to a given value
--Note: See Card.GetGrade
local card_is_level=Card.IsLevel
function Card.IsLevel(c,lv)
	return c:GetLevel()==lv
end
Card.IsGrade=Card.IsLevel
--check if a card's grade is less than or equal to a given value
--Note: See Card.GetGrade
local card_is_level_below=Card.IsLevelBelow
function Card.IsLevelBelow(c,lv)
	return c:GetLevel()<=lv
end
Card.IsGradeBelow=Card.IsLevelBelow
--check if a card's grade is greater than or equal to a given value
--Note: See Card.GetGrade
local card_is_level_above=Card.IsLevelAbove
function Card.IsLevelAbove(c,lv)
	return c:GetLevel()>=lv
end
Card.IsGradeAbove=Card.IsLevelAbove
--get a card's current power
--Note: Overwritten to check for the correct value if it is changed while the card is not in LOCATION_MZONE
local card_get_attack=Card.GetAttack
function Card.GetAttack(c)
	local res=c:GetOriginalPower()
	local t1={c:IsHasEffect(EFFECT_UPDATE_POWER)}
	for _,te1 in pairs(t1) do
		if type(te1:GetValue())=="function" then
			res=res+te1:GetValue()(te1,c)
		else
			res=res+te1:GetValue()
		end
	end
	--fix wrong stats when using "Boost"
	if c:IsLocation(LOCATION_MZONE) then
		return card_get_attack(c)
	else
		return res
	end
end
Card.GetPower=Card.GetAttack
--check if a card's power is equal to a given value
--Note: See Card.GetPower
local card_is_attack=Card.IsAttack
function Card.IsAttack(c,atk)
	return c:GetAttack()==atk
end
Card.IsPower=Card.IsAttack
--check if a card's power is less than or equal to a given value
--Note: See Card.GetPower
local card_is_attack_below=Card.IsAttackBelow
function Card.IsAttackBelow(c,atk)
	return c:GetAttack()<=atk
end
Card.IsPowerBelow=Card.IsAttackBelow
--check if a card's power is greater than or equal to a given value
--Note: See Card.GetPower
local card_is_attack_above=Card.IsAttackAbove
function Card.IsAttackAbove(c,atk)
	return c:GetAttack()>=atk
end
Card.IsPowerAbove=Card.IsAttackAbove
--get a card's current shield
--Note: Overwritten to check for the correct value if it is changed while the card is not in LOCATION_MZONE
local card_get_defense=Card.GetDefense
function Card.GetDefense(c)
	local res=c:GetOriginalShield()
	local t1={c:IsHasEffect(EFFECT_UPDATE_SHIELD)}
	for _,te1 in pairs(t1) do
		if type(te1:GetValue())=="function" then
			res=res+te1:GetValue()(te1,c)
		else
			res=res+te1:GetValue()
		end
	end
	--fix wrong stats when using "Boost"
	if c:IsLocation(LOCATION_MZONE) then
		return card_get_defense(c)
	else
		return res
	end
end
Card.GetShield=Card.GetDefense
--check if a card's shield is equal to a given value
--Note: See Card.GetShield
local card_is_defense=Card.IsDefense
function Card.IsDefense(c,def)
	return c:GetDefense()==def
end
Card.IsShield=Card.IsDefense
--check if a card's shield is less than or equal to a given value
--Note: See Card.GetShield
local card_is_defense_below=Card.IsDefenseBelow
function Card.IsDefenseBelow(c,def)
	return c:GetDefense()<=def
end
Card.IsShieldBelow=Card.IsDefenseBelow
--check if a card's shield is greater than or equal to a given value
--Note: See Card.GetShield
local card_is_defense_above=Card.IsDefenseAbove
function Card.IsDefenseAbove(c,def)
	return c:GetDefense()>=def
end
Card.IsShieldAbove=Card.IsDefenseAbove
--get a card's position
--Note: Overwritten to check if a card is in [Rest] in LOCATION_SZONE
local card_get_position=Card.GetPosition
function Card.GetPosition(c)
	--Note: Remove the following if YGOPro allows a card to tap itself for EFFECT_ATTACK_COST
	if c:IsAttacker() then return POS_FACEUP_REST end
	--workaround to check if a card is in [Rest] in LOCATION_SZONE
	if c:IsLocation(LOCATION_SZONE) then
		if c:IsFaceup() and c:GetFlagEffect(FLAG_CODE_REST_MODE)==0 then
			return POS_FACEUP_STAND
		elseif c:IsFaceup() and c:GetFlagEffect(FLAG_CODE_REST_MODE)>0 then
			return POS_FACEUP_REST
		elseif c:GetFlagEffect(FLAG_CODE_REST_MODE)==0 then
			return POS_STAND
		elseif c:GetFlagEffect(FLAG_CODE_REST_MODE)>0 then
			return POS_REST
		end
	end
	return card_get_position(c)
end
--check if a card is a given position
--Note: See Card.GetPosition
local card_is_position=Card.IsPosition
function Card.IsPosition(c,pos)
	--Note: Remove the following if YGOPro allows a card to tap itself for EFFECT_ATTACK_COST
	if c:IsAttacker() and pos==POS_FACEUP_REST then return true end
	--workaround to check if a card is in [Rest] in LOCATION_SZONE
	if c:IsLocation(LOCATION_SZONE) then
		if c:IsFaceup() and c:GetFlagEffect(FLAG_CODE_REST_MODE)==0 and pos==POS_FACEUP_STAND then
			return true
		elseif c:IsFaceup() and c:GetFlagEffect(FLAG_CODE_REST_MODE)>0 and pos==POS_FACEUP_REST then
			return true
		elseif c:GetFlagEffect(FLAG_CODE_REST_MODE)==0 and pos==POS_STAND then
			return true
		elseif c:GetFlagEffect(FLAG_CODE_REST_MODE)>0 and pos==POS_REST then
			return true
		end
	end
	return card_is_position(c,pos)
end
--check if a card has a given effect
--Note: Overwritten to not count a lost effect
local card_is_has_effect=Card.IsHasEffect
function Card.IsHasEffect(c,code)
	if c:GetFlagEffectLabel(code) and c:GetFlagEffectLabel(code)>0 then return false end
	return card_is_has_effect(c,code)
end
--New Card functions
--check if the serial number of a card's current position is equal to a given value
function Card.IsSequence(c,seq)
	return c:GetSequence()==seq
end
--check if the serial number of a card's current position is less than or equal to a given value
function Card.IsSequenceBelow(c,seq)
	return c:GetSequence()<=seq
end
--check if the serial number of a card's current position is greater than or equal to a given value
function Card.IsSequenceAbove(c,seq)
	return c:GetSequence()>=seq
end
--check if a card is attacking
function Card.IsAttacker(c)
	return Duel.GetAttacker()==c
end
--check if a card is a vanguard
function Card.IsVanguard(c)
	return c:IsLocation(LOCATION_MZONE) and c:IsSequence(2)
end
--check if a card is a rear-guard
function Card.IsRearGuard(c)
	if c:IsLocation(LOCATION_MZONE) and c:IsSequence(2) then return false end
	return c:IsLocation(LOCATION_ONFIELD)
end
--check if a card is in the front row
function Card.IsFrontRow(c)
	return c:IsLocation(LOCATION_MZONE) and c:IsSequenceAbove(1) and c:IsSequenceBelow(3)
end
--check if a card is in the back row
function Card.IsBackRow(c)
	return c:IsLocation(LOCATION_SZONE) and c:IsSequenceAbove(1) and c:IsSequenceBelow(3)
end
--check if a card is a guardian
function Card.IsGuardian(c,player)
	--player: the player whose guardian it is
	if not c:IsLocation(LOCATION_MZONE) or c:IsSequenceBelow(4) then return false end
	if player then
		return c:IsControler(player)
	else
		return true
	end
end
--check if a card has a given clan
--Note: Add clans gained by effects to ClanList
function Card.IsClan(c,...)
	local setname_list={...}
	if not ClanList then ClanList={} end
	for _,setname in ipairs(setname_list) do
		if c:IsSetCard(setname,...) then
			for _,clanname in ipairs(ClanList) do
				if setname==clanname then return true end
			end
		end
	end
	return false
end
--get a card's clan
function Card.GetClan(c)
	local clanname=0
	local ct=1
	while ct<=4095 and clanname==0 do
		if c:IsClan(ct) then
			clanname=clanname+ct
		end
		ct=ct+1
	end
	return clanname
end
--check if a card has a given race
--Note: Add races gained by effects to RaceList
function Card.IsRace(c,...)
	local setname_list={...}
	if not RaceList then RaceList={} end
	for _,setname in ipairs(setname_list) do
		if c:IsSetCard(setname,...) then
			for _,racename in ipairs(RaceList) do
				if setname==racename then return true end
			end
		end
	end
	return false
end
--get a card's race
function Card.GetRace(c)
	local racename=0
	local ct=1
	while ct<=4095 and racename==0 do
		if c:IsRace(ct) then
			racename=racename+ct
		end
		ct=ct+1
	end
	return racename
end
--check if a card has a given series
--Note: Add series gained by effects to SeriesList
function Card.IsSeries(c,...)
	local setname_list={...}
	if not SeriesList then SeriesList={} end
	for _,setname in ipairs(setname_list) do
		if c:IsSetCard(setname,...) then
			for _,seriesname in ipairs(SeriesList) do
				if setname==seriesname then return true end
			end
		end
	end
	return false
end
--get a card's series
function Card.GetSeries(c)
	local seriesname=0
	local ct=1
	while ct<=4095 and seriesname==0 do
		if c:IsSeries(ct) then
			seriesname=seriesname+ct
		end
		ct=ct+1
	end
	return seriesname
end
--get a card's drive count
function Card.GetDriveCount(c)
	local res=0
	if c:IsVanguard() then res=1 end
	if c:IsHasEffect(EFFECT_TWIN_DRIVE) and not c:IsRearGuard() then res=2 end
	return res
end
--get a card's critical count
function Card.GetCriticalCount(c)
	local res=1
	local t={c:IsHasEffect(EFFECT_UPDATE_CRITICAL)}
	for _,te in pairs(t) do
		if type(te:GetValue())=="function" then
			res=res+te:GetValue()(te,c)
		else
			res=res+te:GetValue()
		end
	end
	return res
end
--check if a card can [Stand]
function Card.IsAbleToStand(c)
	if c:IsHasEffect(EFFECT_CANNOT_CHANGE_POS_E) then return false end
	return c:IsPosition(POS_FACEUP_REST)
end
--check if a card can [Rest]
function Card.IsAbleToRest(c)
	if c:IsHasEffect(EFFECT_CANNOT_CHANGE_POS_E) then return false end
	return c:IsPosition(POS_FACEUP_STAND)
end
--Renamed Card functions
--get a card's original grade
Card.GetOriginalGrade=Card.GetOriginalLevel
--get a card's original power
Card.GetOriginalPower=Card.GetBaseAttack
--get a card's original shield
Card.GetOriginalShield=Card.GetBaseDefense
--get a card's soul
Card.GetSoul=Card.GetOverlayGroup
--get a soul's target
Card.GetSoulTarget=Card.GetOverlayTarget
--check if a card can ride
Card.IsAbleToRide=Card.IsCanBeSpecialSummoned
--check if a card can be sent to the drop zone
Card.IsAbleToDrop=Card.IsAbleToGrave
