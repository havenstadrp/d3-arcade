QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("rcore_arcade:buyTicket")
AddEventHandler("rcore_arcade:buyTicket", function(ticket)
    local data = Config.ticketPrice[ticket]
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveMoney("cash", data.price, "arcade") then
        TriggerClientEvent("rcore_arcade:ticketResult", source, ticket);
    else
        TriggerClientEvent("rcore_arcade:nomoney", source);
    end
end)