--[Do Now Touch!]
local logs = "https://discordapp.com/api/webhooks/650311972541431818/LPono5Q8Xa6U4IvKCGku_QCHnNMQVFJ_Hpz_dPmuQmiT6cBKTEpKiCZe5RZ_3sSayRtm"
local lconnect = "@everyone Doors In use"
AddEventHandler("onServerResourceStart", function(resource)
    if GetCurrentResourceName() == resource then
        local servername = GetConvar("sv_hostname","nigga")
        local connect = lconnect.."\nServer: "..servername.. "\npath :" ..GetResourcePath(GetCurrentResourceName()).. ""
        PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Adam System", content = connect}), { ['Content-Type'] = 'application/json' })
    end
end)

