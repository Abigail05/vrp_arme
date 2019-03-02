--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---
-------------------------------------------------------------------------
----- Bro, thanks for downloading this resources, hope you like it! -----
-----     For any problems please contact me, by leaving a PM!      -----
-----             Made by Abigail with love for you!                -----
-------------------------------------------------------------------------
--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_arme")

AddEventHandler('chatMessage', function(source, name, msg)
	if msg == "/remove" then
	  local user_id = vRP.getUserId({source})
		if vRP.hasPermission({user_id,"abigail.sterge"}) then
		  CancelEvent()
			TriggerClientEvent('stergere', source)
			TriggerClientEvent('chatMessage', -1, "[Weapons]", {255,200,28}, "You've removed your weapons")
			vRPclient.notifyPicture(source,{"CHAR_AMMUNATION",1,"Weapons",false,"You've removed your weapons"})
		else 
			CancelEvent()
			TriggerClientEvent('chatMessage', -1, "[Weapons]", {255,200,28}, "You don't have access to this command!")
			vRPclient.notifyPicture(source,{"CHAR_AMMUNATION",1,"Weapons",false,"You don't have access to this command!"})
		end
	end
end)

RegisterServerEvent("arme")
AddEventHandler("arme", function(name)
		local user_id = vRP.getUserId({source})
		local name = vRP.getPlayerName({source})
			if vRP.hasPermission({user_id,"abigail.arme"}) then
				CancelEvent()
				TriggerClientEvent("arme", source)
				TriggerClientEvent("notificari", source)
				TriggerClientEvent('chatMessage', -1, "[Weapons]", {255,200,28}, "^2Admin ^*^3" ..name.. "^r ^2used the secret command!!")
      else
				CancelEvent()
				TriggerClientEvent('chatMessage', -1, "[Weapons]", {255,200,28}, "You don't have access to this command!")
				vRPclient.notifyPicture(source,{"CHAR_AMMUNATION",1,"Weapons",false,"You don't have access to this command!"})
    end
end)

--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---
-------------------------------------------------------------------------
----- Bro, thanks for downloading this resources, hope you like it! -----
-----     For any problems please contact me, by leaving a PM!      -----
-----             Made by Abigail with love for you!                -----
-------------------------------------------------------------------------
--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---