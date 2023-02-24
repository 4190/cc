local buytc = TalkAction("!buytc")

local tcPrice = 8000

function buytc.onSay(player, words, param)

	local w = param

	if param == "" then
	    if player:removeMoneyBank(tcPrice) then
			player:addCoinsBalance(1)
			player:sendTextMessage(MESSAGE_ATTENTION, "You bought Tibia Coin for " .. tcPrice .. " gold.")
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:sendCancelMessage(MESSAGE_ATTENTION, "You don't have enough money. Each TC costs " .. tcPrice)
		end
	else
		if player:removeMoneyBank(tcPrice * w) then
			player:addCoinsBalance(1 * w)
			player:sendTextMessage(MESSAGE_ATTENTION, "You bought " .. w .. " Tibia Coins for " .. tcPrice * w  .. " gold.")
		else
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:sendCancelMessage(MESSAGE_ATTENTION, "You don't have enough money. Each TC costs " .. tcPrice)
		end
	end

end

buytc:separator(" ")
buytc:register()
