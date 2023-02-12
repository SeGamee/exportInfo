local playersInfo = nil

-- Récupérer l'information du serveur
RegisterNetEvent('segame:retrieveInfo')
AddEventHandler('segame:retrieveInfo', function(info)
    playersInfo = info
end)

-- Demander l'information au serveur toutes les secondes
Citizen.CreateThread(function()
    while true do
        TriggerServerEvent('segame:getInfos')
        Citizen.Wait(1000)
    end
end)

RegisterCommand("export", function()
    while not playersInfo do
        Wait(10)
    end
    print(json.encode(playersInfo))
end)