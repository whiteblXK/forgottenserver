function onPrepareDeath(creature, killer)
	local player = creature:getPlayer()
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Test 0.")
	if not player then
		return true
	end

	local condition = player:getCondition(CONDITION_FIRE)
	if condition ~= nil then
		player:removeCondition(CONDITION_FIRE)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Test.")
	end
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Test2.")

	player:addHealth(player:getMaxHealth())
	player:addMana(player:getMaxMana())
	return false
end
