RegisterNetEvent("Witness:CheckJob")
AddEventHandler("Witness:CheckJob", function(players, coords)
    for each, player in ipairs(players) do
        TriggerEvent("redemrp:getPlayerFromId", player, function(user)
            if user ~= nil then
				local group = user.getJob()
				
				if group == "police" then 
					TriggerClientEvent("Witness:ToggleNotification", player, coords)
				end
            end
        end)
    end
end)