data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('pls_bandits:server:robbed')
AddEventHandler('pls_bandits:server:robbed', function()
	local _source = source
	TriggerEvent('redemrp:getPlayerFromId', source, function(user)
		local money = math.random(Config.robAmountLow,Config.robAmountHigh)
		user.removeMoney(money)
		TriggerClientEvent(_source, "redemrp_notification:start", "You were robbed of $"..money.." by the bandits...", 5, "success")
	end)
end)
