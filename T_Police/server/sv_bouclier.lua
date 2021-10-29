TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("swatS", function(source, args, raw)
    local src = source
    local player = ESX.GetPlayerFromId(source)
    local grade = player.job.grade_name
    local name = player.job.name
    if (player.job.grade_name == 'swat' or player.job.grade_name == 'lieutenant' or player.job.grade_name == 'boss' or player.job.grade_name == 'brasdroit') and name == 'police' then 
    TriggerClientEvent("shield:ToggleSwatShield", src)
    end
end)