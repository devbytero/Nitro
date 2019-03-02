--[[
    Official DevByteRo Script 
  Forum FiveM: https://forum.fivem.net/u/Enis-Paradoxul/summary
  GITHUB: https: //github.com/devbytero
  DISCORD: https: //discord.gg/eKkUMWb
  GTA5 MODS: https://ro.gta5-mods.com/users/Enis%2DParadoxul  
]]

--------------------------------------------------------------------------------------------------------------------
------------------------------------------- Script made by Enis-Paradoxul  ------------------------------------------
--------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('nitro:__sync')
AddEventHandler('nitro:__sync', function (boostEnabled, purgeEnabled, lastVehicle)
  local source = source

  for _, player in ipairs(GetPlayers()) do
    if player ~= tostring(source) then
      TriggerClientEvent('nitro:__update', player, source, boostEnabled, purgeEnabled, lastVehicle)
    end
  end
end)
