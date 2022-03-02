QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("d3-arcade:buyTicket")
AddEventHandler("d3-arcade:buyTicket", function(ticket)
    local data = Config.ticketPrice[ticket]
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveMoney("cash", data.price, "arcade") then
        TriggerClientEvent("d3-arcade:ticketResult", source, ticket);
    else
        TriggerClientEvent("d3-arcade:nomoney", source);
    end
end)