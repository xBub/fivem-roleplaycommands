-- Client Event for /me --

RegisterNetEvent('xBub_:sendProximityMessageMe')
AddEventHandler('xBub_:sendProximityMessageMe', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, "^5[ME] ^3" .. name .. ":^7 " .. message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "", {255, 0, 0}, "^5[ME] ^3" .. name .. ":^7 " .. message)
  end
end)

-- Client Event for /do --

RegisterNetEvent('xBub_:sendProximityMessageDo')
AddEventHandler('xBub_:sendProximityMessageDo', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, "^1[DO] ^3" .. name .. ":^7 " .. message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "", {255, 0, 0}, "^1[DO] ^3" .. name .. ":^7 " .. message)
  end
end)