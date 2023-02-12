RegisterServerEvent("segame:getInfos")
AddEventHandler("segame:getInfos", function()
    local _source = source
    local infos = {
        Nom = "Doe",
        Prenom = "John",
        Age = 25,
        Taille = 186,
        Poids = 80,
        Sexe = "Homme",
        Argent = 1000,
        Banque = 10000,
        Job = "Chomeur",
    }
	TriggerClientEvent('segame:retrieveInfo', _source, infos)
end)