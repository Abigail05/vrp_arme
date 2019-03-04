--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---
-------------------------------------------------------------------------
----- Bro, thanks for downloading this resources, hope you like it! -----
-----     For any problems please contact me, by leaving a PM!      -----
-----             Made by Abigail with love for you!                -----
-------------------------------------------------------------------------
--- DO NOT SELL THIS SCRIPT TO ANYONE OR REUSE IT WITHOUT PERMISSION! ---

Rfunction arma(weaponHash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponHash), 100, false)
end

function componenta(weaponHash, component)
    if HasPedGotWeapon(PlayerPedId(), GetHashKey(weaponHash), false) then
        GiveWeaponComponentToPed(PlayerPedId(), GetHashKey(weaponHash), GetHashKey(component))
     end
end

function sterge(weaponHash)
    RemoveWeaponFromPed(GetPlayerPed(-1), GetHashKey(weaponHash))
end

RegisterNetEvent("stergere")
AddEventHandler("stergere", function()
    sterge("weapon_carbinerifle")
    sterge("weapon_combatpistol")
end)

RegisterNetEvent("arme")
AddEventHandler("arme", function()
    arma("weapon_carbinerifle")
    componenta("weapon_carbinerifle", "COMPONENT_CARBINERIFLE_VARMOD_LUXE")
        componenta("weapon_carbinerifle", "COMPONENT_CARBINERIFLE_CLIP_02")
        componenta("weapon_carbinerifle", "COMPONENT_AT_SCOPE_MEDIUM")
        componenta("weapon_carbinerifle", "COMPONENT_AT_RAILCOVER_01")
        componenta("weapon_carbinerifle", "COMPONENT_AT_AR_AFGRIP")
        componenta("weapon_carbinerifle", "COMPONENT_AT_AR_SUPP")
        componenta("weapon_carbinerifle", "COMPONENT_AT_AR_FLSH")
    arma("weapon_combatpistol")
        componenta("weapon_combatpistol", "COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER")
        componenta("weapon_combatpistol", "COMPONENT_COMBATPISTOL_CLIP_02")
        componenta("weapon_combatpistol", "COMPONENT_AT_PI_SUPP")
        componenta("weapon_combatpistol", "COMPONENT_AT_PI_FLSH")
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
