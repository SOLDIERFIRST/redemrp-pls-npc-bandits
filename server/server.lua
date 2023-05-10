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
		TriggerClientEvent(_source, 'redem_roleplay:NotifyLeft', "Ambush!", "You were robbed of $"..money.." by the bandits...", "menu_textures", "log_gang_bag", 5000)
	end)
end)
