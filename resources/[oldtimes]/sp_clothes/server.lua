ESX = exports['es_extended']:getSharedObject()





ESX.RegisterUsableItem('tshirt', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:tshirt', source)
end)

ESX.RegisterUsableItem('jeans', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:jeans', source)
end)

ESX.RegisterUsableItem('bag', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:bag', source)
end)

ESX.RegisterUsableItem('shoe', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:shoe', source)
end)

ESX.RegisterUsableItem('mask', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:mask', source)
end)

