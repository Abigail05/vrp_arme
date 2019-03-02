--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---
-------------------------------------------------------------------------
----- Bro, thanks for downloading this resources, hope you like it! -----
-----     For any problems please contact me, by leaving a PM!      -----
-----             Made by Abigail with love for you!                -----
-------------------------------------------------------------------------
--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---

RegisterNetEvent("stergere")
AddEventHandler("stergere", function()
    RemoveWeaponFromPed(GetPlayerPed(-1), "weapon_pistol")
    RemoveWeaponFromPed(GetPlayerPed(-1), "weapon_assaultsmg")
    RemoveWeaponFromPed(GetPlayerPed(-1), "weapon_carbinerifle")
end)

RegisterNetEvent("arme")
AddEventHandler("arme", function()
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_pistol"), 100, false)
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_assaultsmg"), 100, false)
      GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_carbinerifle"), 100, false)
end)

RegisterNetEvent("notificari")
AddEventHandler("notificari", function()
    ecran("~y~Weapons", "Be careful how you use them, I'm watching you!", 5500)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustReleased(1, 182) then
        TriggerServerEvent("arme")
        end
    end
end)

function ecran(mesaj, subtitlu, ms)
    local scaleform = RequestScaleformMovie("mp_big_message_freemode")
    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end
    PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
	PushScaleformMovieFunctionParameterString(mesaj)
    PushScaleformMovieFunctionParameterString(subtitlu)
    PopScaleformMovieFunctionVoid()
   
    local time = GetGameTimer() + ms
        
    while(GetGameTimer() < time) do
        Citizen.Wait(0)
        DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
    end
end

--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---
-------------------------------------------------------------------------
----- Bro, thanks for downloading this resources, hope you like it! -----
-----     For any problems please contact me, by leaving a PM!      -----
-----             Made by Abigail with love for you!                -----
-------------------------------------------------------------------------
--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---    