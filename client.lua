local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()

exports['qb-target']:AddBoxZone("gavel", vector3(253.31, -1107.73, 30.22), 1.5, 1.6, {  -- configurate coords here
  name = "gavel", 
  heading = 357.33, 
  debugPoly = false, 
  minZ = 30.08200263977, 
  maxZ = 31.132970809936, 
}, {
  options = { 
    { 
      type = "client", 
      event = "syn-gavel:client:gavelhit", 
      icon = 'fas fa-gavel', 
      label = 'Hit the Gavel',

      isEnabled = function(entity) 
        if IsPedAPlayer(entity) then
 return false
 end 
  return true
end
}
},
  distance = 2.5,
  drawDistance = 10.0,
  drawColor = {255, 255, 255, 255},
  successDrawColor = {30, 144, 255, 255}, 
  })

RegisterNetEvent('syn-gavel:client:gavelhit', function()
    local Player = QBCore.Functions.GetPlayerData()
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 15, "gavel", 0.7) -- Change distance and sound volume
end)
