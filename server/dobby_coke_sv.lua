ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local hiddenprocess = vector3(5404.09, -5173.86, 31.48) -- Change this to whatever location you want. This is server side to prevent people from dumping the coords
local hiddenstart = vector3(1779.20, 3641.08, 34.50) -- Change this to whatever location you want. This is server side to prevent people from dumping the coords

RegisterNetEvent('dobby_coke:updateTable')
AddEventHandler('dobby_coke:updateTable', function(bool)
    TriggerClientEvent('dobby_coke:syncTable', -1, bool)
end)

ESX.RegisterUsableItem('dobby_coke', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('dobby_coke', 1)
	TriggerClientEvent('dobby_coke:onUse', source)
end)

ESX.RegisterServerCallback('dobby_coke:processcoords', function(source, cb)
    cb(hiddenprocess)
end)

ESX.RegisterServerCallback('dobby_coke:startcoords', function(source, cb)
    cb(hiddenstart)
end)

ESX.RegisterServerCallback('dobby_coke:pay', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local price = Config.price
	local check = xPlayer.getMoney()
	if check >= price then
		xPlayer.removeMoney(price)
    	cb(true)
    else
      if Config.useMythic then
    	 TriggerClientEvent('mythic_notify:client:DoHudText:long', _source, { type = 'error', text = _U'no_money'})
      end
    	cb(false)
    end
end)

RegisterServerEvent("dobby_coke:processed")
AddEventHandler("dobby_coke:processed", function(x,y,z)
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
  	local pick = Config.randBrick
	xPlayer.removeInventoryItem('cokebrick', Config.takeBrick)
	xPlayer.addInventoryItem('coke1g', pick)
end)

ESX.RegisterServerCallback('dobby_coke:process', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local check = xPlayer.getInventoryItem('dobby_cokebrick').count
	if check >= 1 then
    	cb(true)
    else
      if Config.useMythic then
    	 TriggerClientEvent('mythic_notify:client:DoHudText:long', _source, { type = 'error', text = _U'no_brick'})
      end
    	cb(false)
    end
end)

RegisterServerEvent("dobby_coke:GiveItem")
AddEventHandler("dobby_coke:GiveItem", function()
  	local _source = source
  	local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.addInventoryItem('cokebrick', math.random(1,3))
end)
