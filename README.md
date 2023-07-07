# Syn-Gavel

 [Vasko RP Discord](https://discord.gg/P3RMrbwA8n)

# Project Description
I was pretty bored and tired so I decided to make this script for lawyers. Everything you need is in the client.lua

# Dependencies
* [QBCore](https://github.com/qbcore-framework/qb-core)
* [QB-Target](https://github.com/qbcore-framework/qb-target)
* [InteractSound](https://github.com/plunkettscott/interact-sound)

# Install

* Drag the folder in sounds file to client/html/sounds in InteractSound
* Configure your location in  client.lua

# Original client.lua

```

local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()

print('created by s y n t h e t i c')

exports['qb-target']:AddBoxZone("gavel", vector3(253.31, -1107.73, 30.22), 1.5, 1.6, { 
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

           --TriggerEvent('lawyer:gavelhit', 'test')
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
TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 15, "gavel", 0.7)
end)

```