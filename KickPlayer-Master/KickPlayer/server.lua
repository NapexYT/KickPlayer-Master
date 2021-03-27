

--/kick ID Reason
RegisterCommand("kick", function(source, args, rawCommand)
     local badBoi= tonumber(args[1])
     local kickReason = table.concat(args, " ", 2)
    
    if GetPlayerName(source) == "FAXES" then
        if badBoi then
            if kickReason then
                DropPlayer(badBoi, kickReason)
                TriggerClientEvent("chatMessage", -1, "^4^*[Player Kicked] ^7" .. GetPlayerName(badBoi) .. "wurde gekickt weil: " .. kickReason)
            else
                TriggerClientEvent("chatMessage", -1, "^1Invalid Reason. Usage /kick ID Reason")
            end
        else
            TriggerClientEvent("chatMessage", -1, "^1Invalid Player. Usage /kick ID Reason")
        end
    else
        TriggerClientEvent("chatMessage", -1, "^1Invalid Permission")
    end                      
end)