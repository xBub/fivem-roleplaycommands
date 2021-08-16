-- /gme Command --

RegisterCommand('gme', function(source, args, rawCommand)
    local message = table.concat(args, " ", 1)
    local name = GetPlayerName(source)
      TriggerClientEvent('chatMessage', -1, "^1[GME] ^3" .. name .. ":^7 " .. message)
      TriggerClientEvent("chat:addSuggestion", "/gme", "In the chat type /gme followed by your action. (Global)")
  end, false)

-- /me Command --

RegisterCommand('me', function(source, args, rawCommand)
  local message = table.concat(args, " ", 1)
  local name = GetPlayerName(source)
    TriggerClientEvent("xBub_:sendProximityMessageMe", -1, source, name, table.concat(args, " "))
    TriggerClientEvent("chat:addSuggestion", "/me", "In the chat type /me followed by your action. (Proximity)")
end, false)

-- /do Command --

RegisterCommand('do', function(source, args, rawCommand)
  local message = table.concat(args, " ", 1)
  local name = GetPlayerName(source)
    TriggerClientEvent("xBub_:sendProximityMessageDo", -1, source, name, table.concat(args, " "))
    TriggerClientEvent("chat:addSuggestion", "/do", "In the chat type /do followed by your action. (Proximity)")
end, false)

-- /911 Command--

RegisterCommand('911', function(source, args, rawCommand)
  local message = table.concat(args, " ", 1)
  local name = GetPlayerName(source)
    TriggerClientEvent('chatMessage', -1, "^1[911] ^3" .. name .. ":^7 " .. message)
    TriggerClientEvent("chat:addSuggestion", "/911", "Call 911 for your emergency!")
end, false)

-- /ooc Command--

RegisterCommand('ooc', function(source, args, rawCommand)
  local message = table.concat(args, " ", 1)
  local name = GetPlayerName(source)
    TriggerClientEvent('chatMessage', -1, "~m~[OOC] ^3" .. name .. ":^7 " .. message)
    TriggerClientEvent("chat:addSuggestion", "/ooc", "In the chat use /ooc to make an out-of-context message.")
end, false)

-- /twt Command--

RegisterCommand('twt', function(source, args, rawCommand)
  local message = table.concat(args, " ", 1)
  local name = GetPlayerName(source)
    TriggerClientEvent('chatMessage', -1, "^4[Twotter] ^7" .. name .. ": " .. message)
    TriggerClientEvent("chat:addSuggestion", "/twt", "In the chat use /twt to make a twotter message.")
end, false)