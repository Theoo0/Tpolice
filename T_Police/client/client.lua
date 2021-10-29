Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
    RefreshpoliceMoney()
end)


--- Garage

function Garagepolice()
    local policegarage = RageUI.CreateMenu("~b~Garage", "Pour sortir un vehicule")
    RageUI.Visible(policegarage, not RageUI.Visible(policegarage))
    policegarage:SetRectangleBanner(0, 0, 0, 255)
    while policegarage do
        Citizen.Wait(0)
                RageUI.IsVisible(policegarage,function() 

                RageUI.Separator("~b~↓ Garage ↓")

              RageUI.Button("Ranger le véhicule", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                  local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
                  if dist4 < 10 then
                      DeleteEntity(veh)
                      RageUI.CloseAll()
                end
              end, })


              RageUI.Separator("↓ ~y~Véhicule Basique~w~ ↓")

              if ESX.PlayerData.job.grade_name == 'recruit' or ESX.PlayerData.job.grade_name == 'officer' or ESX.PlayerData.job.grade_name == 'sergeant' or ESX.PlayerData.job.grade_name == 'swat' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then 
                RageUI.Button("Ford victoria - Cadet", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("police7")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, 445.72, -1025.72, 28.64, 5.22, true, true)
                    end
                })

               

                RageUI.Button("Ford Interceptor 4x4", nil, {RightLabel = "→"}, true , {
                  onSelected = function()
                    local model = GetHashKey("police3")
                    RequestModel(model)
                    while not HasModelLoaded(model) do Citizen.Wait(10) end
                    local pos = GetEntityCoords(PlayerPedId())
                    local vehicle = CreateVehicle(model, 442.20, -1025.85, 28.71, 5.22, true, true)
                  end
              })

              RageUI.Button("Dodge Charger", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                  local model = GetHashKey("police2")
                  RequestModel(model)
                  while not HasModelLoaded(model) do Citizen.Wait(10) end
                  local pos = GetEntityCoords(PlayerPedId())
                  local vehicle = CreateVehicle(model, 437.41, -1026.68, 28.80, 5.22, true, true)
                end
            })
          
            RageUI.Separator("↓ ~o~Brigade K9~w~↓")

            RageUI.Button("Dodge 4x4 K9", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                  local model = GetHashKey("police6")
                  RequestModel(model)
                  while not HasModelLoaded(model) do Citizen.Wait(10) end
                  local pos = GetEntityCoords(PlayerPedId())
                  local vehicle = CreateVehicle(model, 434.43, -1026.54, 28.85, 5.22, true, true)
                end
            })

            RageUI.Separator("↓ ~p~Brigade Moto~w~↓")

            RageUI.Button("Moto police", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                  local model = GetHashKey("policeb")
                  RequestModel(model)
                  while not HasModelLoaded(model) do Citizen.Wait(10) end
                  local pos = GetEntityCoords(PlayerPedId())
                  local vehicle = CreateVehicle(model, 449.79, -1011.88, 28.49, 180.50, true, true)
                end
            })
            end

            RageUI.Separator("↓ ~r~Voiture Spécial~w~↓")

            if ESX.PlayerData.job.grade_name == 'sergeant' or ESX.PlayerData.job.grade_name == 'swat' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then

                RageUI.Button("Bus", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("pbus")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, 441.09, -1020.22, 28.65, 92.86, true, true)
                    end
                })

                RageUI.Button("Lexus Speed Intervention - VIR 1", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("polgs350")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, 448.84, -1020.28, 28.46, 95.60, true, true)
                    end
                })
            end

            if ESX.PlayerData.job.grade_name == 'swat' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then

                RageUI.Button("Maserati - VIR 2", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("ghispo2")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, 452.40, -1025.28, 28.53, 6.14, true, true)
                    end
                })
                end

            if ESX.PlayerData.job.grade_name == 'boss' then
            
                RageUI.Button("Brabus Speed Intervention - VIR 3", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                      local model = GetHashKey("rmodgt63police")
                      RequestModel(model)
                      while not HasModelLoaded(model) do Citizen.Wait(10) end
                      local pos = GetEntityCoords(PlayerPedId())
                      local vehicle = CreateVehicle(model, 455.76, -1024.99, 28.46, 6.14, true, true)
                    end
                })
                end

                if ESX.PlayerData.job.grade_name == 'swat' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then

                    RageUI.Button("Fourgon blindé", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                          local model = GetHashKey("riot")
                          RequestModel(model)
                          while not HasModelLoaded(model) do Citizen.Wait(10) end
                          local pos = GetEntityCoords(PlayerPedId())
                          local vehicle = CreateVehicle(model, 448.84, -1020.28, 28.46, 95.60, true, true)
                        end
                    })

                    RageUI.Button("Antiémeute", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                          local model = GetHashKey("riot2")
                          RequestModel(model)
                          while not HasModelLoaded(model) do Citizen.Wait(10) end
                          local pos = GetEntityCoords(PlayerPedId())
                          local vehicle = CreateVehicle(model, 448.84, -1020.28, 28.46, 95.60, true, true)
                        end
                    })

                    RageUI.Button("Granger", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                          local model = GetHashKey("fbi2")
                          RequestModel(model)
                          while not HasModelLoaded(model) do Citizen.Wait(10) end
                          local pos = GetEntityCoords(PlayerPedId())
                          local vehicle = CreateVehicle(model, 448.84, -1020.28, 28.46, 95.60, true, true)
                        end
                    })
                    end

            end, function()
            end)
        if not RageUI.Visible(policegarage) then
            policegarage = RMenu:DeleteType("policegarage", true)
        end
        end
        end

        local position = {
            {x = 458.93, y = -1017.22, z = 28.43}
        }
        
        Citizen.CreateThread(function()
            while true do
        
              local wait = 750
        
                for k in pairs(position) do
                if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
                    local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                    local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
        
                    if dist <= 15.0 then
                    wait = 0
                    DrawMarker(22, 458.93, -1017.22, 28.43, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 0, 0 , 255, true, true, p19, true)    
        
                
                    if dist <= 1.0 then
                       wait = 0
                        Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour accéder au ~r~garage", 1) 
                        if IsControlJustPressed(1,51) then
                        Garagepolice()
                    end
                end
            end
            end
            Citizen.Wait(wait)
            end
        end
        end)

        function Garagehelico()
            local helicogarage = RageUI.CreateMenu("~b~Garage - Helico", "Pour sortir un vehicule")
            RageUI.Visible(helicogarage, not RageUI.Visible(helicogarage))
            helicogarage:SetRectangleBanner(0, 0, 0, 255)
            while helicogarage do
                Citizen.Wait(0)
                        RageUI.IsVisible(helicogarage,function() 
        
                        RageUI.Separator("~b~↓ Garage ↓")

                        RageUI.Button("Ranger le véhicule", nil, {RightLabel = "→"}, true , {
                            onSelected = function()
                              local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
                              if dist4 < 15 then
                                  DeleteEntity(veh)
                                  RageUI.CloseAll()
                            end
                          end, })
                          
                      RageUI.Separator("~b~↓ Hélicoptère ↓")    
                          
                      RageUI.Button("Hélicoptère LSPD", nil, {RightLabel = "→"}, true , {
                          onSelected = function()
                            local model = GetHashKey("polmav")
                            RequestModel(model)
                            while not HasModelLoaded(model) do Citizen.Wait(10) end
                            local pos = GetEntityCoords(PlayerPedId())
                            local vehicle = CreateVehicle(model, 447.48, -981.33, 43.69, 89.79, true, true)
                          end
                      })

                    end, function()
                    end)
                if not RageUI.Visible(helicogarage) then
                    helicogarage = RMenu:DeleteType("helicogarage", true)
                end
                end
                end
        
                local position3 = {
                    {x = 457.37, y = -981.94, z = 43.69}
                }
                
                Citizen.CreateThread(function()
                    while true do
                
                      local wait = 750
                
                        for k in pairs(position3) do
                        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
                            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position3[k].x, position3[k].y, position3[k].z)
                
                            if dist <= 15.0 then
                            wait = 0
                            DrawMarker(22, 457.37, -981.94, 43.69, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 0, 0 , 255, true, true, p19, true)    
                
                        
                            if dist <= 1.0 then
                               wait = 0
                                Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour accéder au ~r~garage à hélicoptère", 1) 
                                if IsControlJustPressed(1,51) then
                                Garagehelico()
                            end
                        end
                    end
                    end
                    Citizen.Wait(wait)
                    end
                end
                end)
                
--- Armurie

function Armuriepolice()
    local policearmurie = RageUI.CreateMenu("~b~Armurie", "Pour prendre une arme")
    RageUI.Visible(policearmurie, not RageUI.Visible(policearmurie))
    policearmurie:SetRectangleBanner(0, 0, 0, 255)
    while policearmurie do
        Citizen.Wait(0)
                RageUI.IsVisible(policearmurie,function() 

                    RageUI.Button("Equipement de base", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                            TriggerServerEvent('equipementbase')
                        end 
                    })
        
                    if ESX.PlayerData.job.grade_name == 'officer' then
                        for k,v in pairs(Config.armurerie) do
                        RageUI.Button("Equipement Officier", nil, {RightLabel = "→"}, true , {
                            onSelected = function()
                                TriggerServerEvent('armurerie', v.arme, v.prix)
                            end
                        })    
                    end
                end
        
                if ESX.PlayerData.job.grade_name == 'sergeant' then
                    for k,v in pairs(Config.arm) do
                    RageUI.Button(v.nom, nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                            TriggerServerEvent('armurerie', v.arme, v.prix)
                        end
                    })    
                end
            end
        
            if ESX.PlayerData.job.grade_name == 'swat' then
                for k,v in pairs(Config.arm) do
                RageUI.Button(v.nom, nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                        TriggerServerEvent('armurerie', v.arme, v.prix)
                    end
                })    
            end
        end
        
                if ESX.PlayerData.job.grade_name == 'lieutenant' then
                        for k,v in pairs(Config.arm) do
                            RageUI.Button(v.nom, nil, {RightLabel = "→"}, true , {
                                onSelected = function()
                                    TriggerServerEvent('armurerie', v.arme, v.prix)
                                end
                            })    
                        end
                    end
        
                    if ESX.PlayerData.job.grade_name == 'boss' then
                        for k,v in pairs(Config.armi) do
                            RageUI.Button(v.nom, nil, {RightLabel = "→"}, true , {
                                onSelected = function()
                                    TriggerServerEvent('armurerie', v.arme, v.prix)
                                end
                            })    
                        end
                    end

                end, function()
                end)
            if not RageUI.Visible(policearmurie) then
                policearmurie = RMenu:DeleteType("policearmurie", true)
            end
            end
            end
    
            local position2 = {
                {x = 484.36, y = -1002.04, z = 25.73}
            }
            
            Citizen.CreateThread(function()
                while true do
            
                  local wait = 750
            
                    for k in pairs(position2) do
                    if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
                        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position2[k].x, position2[k].y, position2[k].z)
            
                        if dist <= 15.0 then
                        wait = 0
                        DrawMarker(22, 484.36, -1002.04, 25.73, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 0, 0 , 255, true, true, p19, true)    
                    
                        if dist <= 1.0 then
                           wait = 0
                            Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour accéder au ~r~l\'armurerie", 1) 
                            if IsControlJustPressed(1,51) then
                            Armuriepolice()
                        end
                    end
                end
                end
                Citizen.Wait(wait)
                end
            end
            end)

--- Fonction radar

local maxSpeed = 0
-- local minSpeed = 0
local info = ""
local isRadarPlaced = false -- bolean to get radar status
local Radar -- entity object
local RadarBlip -- blip
local RadarPos = {} -- pos
local RadarAng = 0 -- angle
local LastPlate = ""
local LastVehDesc = ""
local LastSpeed = 0
local LastInfo = ""
 
function GetPlayers2()
    local players = {}
    for i = 0, 256 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end
    return players
end
 
function GetClosestDrivingPlayerFromPos(radius, pos)
    local players = GetPlayers2()
    local closestDistance = radius or -1
    local closestPlayer = -1
    local closestVeh = -1
    for _ ,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local ped = GetPlayerPed(value)
            if GetVehiclePedIsUsing(ped) ~= 0 then
                local targetCoords = GetEntityCoords(ped, 0)
                local distance = GetDistanceBetweenCoords(targetCoords["x"], targetCoords["y"], targetCoords["z"], pos["x"], pos["y"], pos["z"], true)
                if(closestDistance == -1 or closestDistance > distance) then
                    closestVeh = GetVehiclePedIsUsing(ped)
                    closestPlayer = value
                    closestDistance = distance
                end
            end
        end
    end
    return closestPlayer, closestVeh, closestDistance
end
 
 
function radarSetSpeed(defaultText)
    DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", defaultText or "", "", "", "", 5)
    while (UpdateOnscreenKeyboard() == 0) do
        DisableAllControlActions(0);
        Wait(0);
    end
    if (GetOnscreenKeyboardResult()) then
        local gettxt = tonumber(GetOnscreenKeyboardResult())
        if gettxt ~= nil then
            return gettxt
        else
            ClearPrints()
            SetTextEntry_2("STRING")
            AddTextComponentString("~r~Veuillez entrer un nombre correct !")
            DrawSubtitleTimed(3000, 1)
            return
        end
    end
    return
end
 
 
function drawTxt(x,y ,width,height,scale, text, r,g,b,a)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end
 
RegisterNetEvent('police:POLICE_radar')
AddEventHandler('police:POLICE_radar', function (data)

    POLICE_radar()
end)

function POLICE_radar()

    if isRadarPlaced then 
        
        if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), RadarPos.x, RadarPos.y, RadarPos.z, true) < 0.9 then 
       
            RequestAnimDict("anim@apt_trans@garage")
            while not HasAnimDictLoaded("anim@apt_trans@garage") do
               Wait(1)
            end
            TaskPlayAnim(GetPlayerPed(-1), "anim@apt_trans@garage", "gar_open_1_left", 1.0, -1.0, 5000, 0, 1, true, true, true) 
       
            Citizen.Wait(2000) 
       
            SetEntityAsMissionEntity(Radar, false, false)
           
            DeleteObject(Radar)
            DeleteEntity(Radar)
            Radar = nil
            RadarPos = {}
            RadarAng = 0
            isRadarPlaced = false
           
            RemoveBlip(RadarBlip)
            RadarBlip = nil
            LastPlate = ""
            LastVehDesc = ""
            LastSpeed = 0
            LastInfo = ""
           
        else
           
            ClearPrints()
            SetTextEntry_2("STRING")
            AddTextComponentString("~r~Vous n'êtes pas à coté de votre Radar !")
            DrawSubtitleTimed(3000, 1)
           
            Citizen.Wait(1500) 
       
        end
   
    else 
        maxSpeed = radarSetSpeed("50")
       
        Citizen.Wait(200) 
        RadarPos = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 1.5, 0)
        RadarAng = GetEntityRotation(GetPlayerPed(-1))
       
        if maxSpeed ~= nil then 
       
            RequestAnimDict("anim@apt_trans@garage")
            while not HasAnimDictLoaded("anim@apt_trans@garage") do
               Wait(1)
            end
            TaskPlayAnim(GetPlayerPed(-1), "anim@apt_trans@garage", "gar_open_1_left", 1.0, -1.0, 5000, 0, 1, true, true, true) -- animation
           
            Citizen.Wait(1500)
           
            RequestModel("prop_cctv_pole_01a")
            while not HasModelLoaded("prop_cctv_pole_01a") do
               Wait(1)
            end
           
            Radar = CreateObject(GetHashKey('prop_cctv_pole_01a'), RadarPos.x, RadarPos.y, RadarPos.z - 7, true, true, true) 
            SetEntityRotation(Radar, RadarAng.x, RadarAng.y, RadarAng.z - 115)
            SetEntityAsMissionEntity(Radar, true, true)
           
            FreezeEntityPosition(Radar, true) 
 
            isRadarPlaced = true
           
            RadarBlip = AddBlipForCoord(RadarPos.x, RadarPos.y, RadarPos.z)
            SetBlipSprite(RadarBlip, 380) 
            SetBlipColour(RadarBlip, 1) 
            SetBlipAsShortRange(RadarBlip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Radar")
            EndTextCommandSetBlipName(RadarBlip)
       
        end
       
    end
end
 
Citizen.CreateThread(function()
    while true do
        Wait(0)
 
        if isRadarPlaced then
       
            if HasObjectBeenBroken(Radar) then 
               
                SetEntityAsMissionEntity(Radar, false, false)
                SetEntityVisible(Radar, false)
                DeleteObject(Radar) 
                DeleteEntity(Radar) 
               
                Radar = nil
                RadarPos = {}
                RadarAng = 0
                isRadarPlaced = false
               
                RemoveBlip(RadarBlip)
                RadarBlip = nil
               
                LastPlate = ""
                LastVehDesc = ""
                LastSpeed = 0
                LastInfo = ""
               
            end
           
            if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), RadarPos.x, RadarPos.y, RadarPos.z, true) > 300 then 
           
                SetEntityAsMissionEntity(Radar, false, false)
                SetEntityVisible(Radar, false)
                DeleteObject(Radar) 
                DeleteEntity(Radar) 
               
                Radar = nil
                RadarPos = {}
                RadarAng = 0
                isRadarPlaced = false
               
                RemoveBlip(RadarBlip)
                RadarBlip = nil
               
                LastPlate = ""
                LastVehDesc = ""
                LastSpeed = 0
                LastInfo = ""
               
                ClearPrints()
                SetTextEntry_2("STRING")
                AddTextComponentString("~r~Vous êtes parti trop loin de votre Radar !")
                DrawSubtitleTimed(3000, 1)
               
            end
           
        end
       
        if isRadarPlaced then
 
            local viewAngle = GetOffsetFromEntityInWorldCoords(Radar, -8.0, -4.4, 0.0) 
            local ply, veh, dist = GetClosestDrivingPlayerFromPos(30, viewAngle) 

            if veh ~= nil then
           
                local vehPlate = GetVehicleNumberPlateText(veh) or ""
                local vehSpeedKm = GetEntitySpeed(veh)*3.6
                local vehDesc = GetDisplayNameFromVehicleModel(GetEntityModel(veh))--.." "..GetVehicleColor(veh)
                if vehDesc == "CARNOTFOUND" then vehDesc = "" end
                       
                     
                if vehSpeedKm < maxSpeed then
                    info = string.format("   Vehicule ~r~%s ~w~Plaque ~r~%s ~w~Km/h ~g~%s", vehDesc, vehPlate, math.ceil(vehSpeedKm))
                else
                    info = string.format("   Vehicule ~r~%s ~w~Plaque ~r~%s ~w~Km/h ~r~%s", vehDesc, vehPlate, math.ceil(vehSpeedKm))
                    if LastPlate ~= vehPlate then
                        LastSpeed = vehSpeedKm
                        LastVehDesc = vehDesc
                        LastPlate = vehPlate
                    elseif LastSpeed < vehSpeedKm and LastPlate == vehPlate then
                            LastSpeed = vehSpeedKm
                    end
                    LastInfo = string.format("   Vehicule ~r~%s ~w~Plaque ~r~%s ~w~Km/h ~r~%s", LastVehDesc, LastPlate, math.ceil(LastSpeed))
                end
                   
                DrawRect(0.88, 0.97, 0.2, 0.03, 0, 0, 0, 220)
                drawTxt(0.88, 0.97, 0.2, 0.03, 0.24, info, 255, 255, 255, 255)
               
                DrawRect(0.88, 0.93, 0.2, 0.03, 0, 0, 0, 220)
                drawTxt(0.88, 0.93, 0.2, 0.03, 0.24, LastInfo, 255, 255, 255, 255)
               
            end
           
        end
           
    end  
end)

--- Menu F6

local open = false 
local mainMenu8 = RageUI.CreateMenu('~b~LSPD', 'Menu police')
local subMenu8 = RageUI.CreateSubMenu(mainMenu8, "~b~LSPD", "Interaction Personne")
local subMenu9 = RageUI.CreateSubMenu(mainMenu8, "~b~LSPD", "Menu Informations")
local subMenu10 = RageUI.CreateSubMenu(mainMenu8, "~b~LSPD", "Menu Renfort")
local subMenu11 = RageUI.CreateSubMenu(mainMenu8, "~b~LSPD", "Intéraction Vehicule")
local subMenu12 = RageUI.CreateSubMenu(mainMenu8, "~b~LSPD", "Menu Chien")
local subMenu13 = RageUI.CreateSubMenu(mainMenu8, "~b~LSPD", "Menu Swat")
mainMenu8.Display.Header = true 
mainMenu8.Closed = function()
  open = false
end

function OpenMenu8()
	if open then 
		open = false
		RageUI.Visible(mainMenu8, false)
		return
	else
		open = true 
		RageUI.Visible(mainMenu8, true)
		CreateThread(function()
		while open do 
		   RageUI.IsVisible(mainMenu8,function() 

            RageUI.Checkbox("Prendre/Quitter son service",nil, service,{},function(Hovered,Ative,Selected,Checked)
                if Selected then

                    service = Checked

                    if Checked then
                        onservice = true
						RageUI.Popup({
							message = "Vous avez pris votre service !"})
							TriggerServerEvent('Tpolice:debutservice')  
                    else
                        onservice = false
						RageUI.Popup({
							message = "Vous avez quitter votre service !"})
							TriggerServerEvent('Tpolice:finservice')
                    end
                end
            end)

			if onservice then

            if ESX.PlayerData.job.grade_name == 'swat' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then

                RageUI.Separator("↓ ~r~Action Swat~w~ ↓")

            end

            if ESX.PlayerData.job.grade_name == 'swat' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then 

                RageUI.Button("~r~Menu Swat", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                    end
                }, subMenu13)

            end

            RageUI.Separator("↓ ~b~Action Police~w~ ↓")

			RageUI.Button("Infos LSPD", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu9)

			RageUI.Button("Intéractions sur personne", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu8)

			RageUI.Button("Intéractions sur véhicules", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu11)

			RageUI.Button("Demande de renfort", nil, {RightLabel = "→"}, true , {
				onSelected = function()
				end
			}, subMenu10)

            if ESX.PlayerData.job.grade_name == 'sergeant' or ESX.PlayerData.job.grade_name == 'swat' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then 

				RageUI.Button("Menu Chien", nil, {RightLabel = "→"}, true , {
					onSelected = function()
					end
				}, subMenu12)

			end

        end

			end)

			RageUI.IsVisible(subMenu8,function() 

                RageUI.Separator("↓ ~b~Action permis~w~ ↓")

				RageUI.Button("Retirer le Permis de voiture", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
						if closestPlayer ~= -1 and closestDistance <= 3.0 then
						TriggerServerEvent('esx_license:removeLicense', GetPlayerServerId(closestPlayer), 'drive')
						TriggerServerEvent('Tpolice:retirervoiture')  
					 else
						ESX.ShowNotification('Personne à proximité')
					end
				end 
				})

				RageUI.Button("Retirer le Permis de camion", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
						if closestPlayer ~= -1 and closestDistance <= 3.0 then
						TriggerServerEvent('esx_license:removeLicense', GetPlayerServerId(closestPlayer), 'drive_truck')
						TriggerServerEvent('Tpolice:retirercamion')  
					 else
						ESX.ShowNotification('Personne à proximité')
					end
				end 
				})

				RageUI.Button("Retirer le Permis de moto", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
						if closestPlayer ~= -1 and closestDistance <= 3.0 then
						TriggerServerEvent('esx_license:removeLicense', GetPlayerServerId(closestPlayer), 'drive_bike')
						TriggerServerEvent('Tpolice:retirermoto')  
					 else
						ESX.ShowNotification('Personne à proximité')
					end
				end 
				})

				RageUI.Button("Retirer le PPA", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
						if closestPlayer ~= -1 and closestDistance <= 3.0 then
						TriggerServerEvent('esx_license:removeLicense', GetPlayerServerId(closestPlayer), 'weapon')
						TriggerServerEvent('Tpolice:retirerppa')  
					 else
						ESX.ShowNotification('Personne à proximité')
					end
				end 
				})

				RageUI.Separator("↓ ~b~Action menotte~w~ ↓")

				local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

				RageUI.Button("Menotter/démenotter", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local target, distance = ESX.Game.GetClosestPlayer()
						playerheading = GetEntityHeading(GetPlayerPed(-1))
						playerlocation = GetEntityForwardVector(PlayerPedId())
						playerCoords = GetEntityCoords(GetPlayerPed(-1))
						local target_id = GetPlayerServerId(target)
						if distance <= 2.0 then 
							TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(closestPlayer))
					else
						ESX.ShowNotification('Personne à proximité')
						end
				end 
				})

				RageUI.Button("Escorter", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local target, distance = ESX.Game.GetClosestPlayer()
						playerheading = GetEntityHeading(GetPlayerPed(-1))
						playerlocation = GetEntityForwardVector(PlayerPedId())
						playerCoords = GetEntityCoords(GetPlayerPed(-1))
						local target_id = GetPlayerServerId(target)
						if distance <= 2.0 then 
					TriggerServerEvent('esx_policejob:drag', GetPlayerServerId(closestPlayer))
				else
					ESX.ShowNotification('Personne à proximité')
					end
				end 
				})

				RageUI.Button("Le mettre dans le véhicule", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local target, distance = ESX.Game.GetClosestPlayer()
						playerheading = GetEntityHeading(GetPlayerPed(-1))
						playerlocation = GetEntityForwardVector(PlayerPedId())
						playerCoords = GetEntityCoords(GetPlayerPed(-1))
						local target_id = GetPlayerServerId(target)
						if distance <= 2.0 then 
					TriggerServerEvent('esx_policejob:putInVehicle', GetPlayerServerId(closestPlayer))
				else
					ESX.ShowNotification('Personne à proximité')
					end
				end 
				})

				RageUI.Button("Le sortir de véhicule", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local target, distance = ESX.Game.GetClosestPlayer()
						playerheading = GetEntityHeading(GetPlayerPed(-1))
						playerlocation = GetEntityForwardVector(PlayerPedId())
						playerCoords = GetEntityCoords(GetPlayerPed(-1))
						local target_id = GetPlayerServerId(target)
						if distance <= 2.0 then 
					TriggerServerEvent('esx_policejob:OutVehicle', GetPlayerServerId(closestPlayer))
				else
					ESX.ShowNotification('Personne à proximité')
					end
				end 
				})

				RageUI.Separator("↓ ~b~Action personnes~w~ ↓")

				local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()	
				RageUI.Button("Prendre carte d'identité", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local target, distance = ESX.Game.GetClosestPlayer()
					playerheading = GetEntityHeading(GetPlayerPed(-1))
					playerlocation = GetEntityForwardVector(PlayerPedId())
					playerCoords = GetEntityCoords(GetPlayerPed(-1))
					local target_id = GetPlayerServerId(target)
					if distance <= 2.0 then  
                	RageUI.CloseAll()
                	OpenIdentityCardMenu(closestPlayer)
					else
					ESX.ShowNotification('Personne à proximité')
				end
				end
				})

				RageUI.Button("Fouiller", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local target, distance = ESX.Game.GetClosestPlayer()
						playerheading = GetEntityHeading(GetPlayerPed(-1))
						playerlocation = GetEntityForwardVector(PlayerPedId())
						playerCoords = GetEntityCoords(GetPlayerPed(-1))
						local target_id = GetPlayerServerId(target)
						if distance <= 2.0 then
						RageUI.CloseAll()
						ExecuteCommand("me La personne fouille")
						OpenBodySearchMenu(closestPlayer)
						else
							ESX.ShowNotification('Personne à proximité')
						end
					end
				})

				RageUI.Button("Donner une Amende", nil, {RightLabel = "→"}, true , {
					onSelected = function()
						local target, distance = ESX.Game.GetClosestPlayer()
						playerheading = GetEntityHeading(GetPlayerPed(-1))
						playerlocation = GetEntityForwardVector(PlayerPedId())
						playerCoords = GetEntityCoords(GetPlayerPed(-1))
						local target_id = GetPlayerServerId(target)
						if distance <= 2.0 then
						RageUI.CloseAll()        
						OpenBillingMenu() 
						else
						ESX.ShowNotification('Personne à proximité')
						end
					end
				})	

			end)

			RageUI.IsVisible(subMenu13,function() 

                RageUI.Separator("↓ ~r~ Service ~w~ ↓")

                RageUI.Button("~g~Disponible", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                        local info = 'swat1'
                        TriggerServerEvent('police:PriseEtFinservice', info)
                    end
                })

                RageUI.Button("~y~Attente", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                        local info = 'swat2'
                        TriggerServerEvent('police:PriseEtFinservice', info)
                    end
                })

                RageUI.Button("~b~Fin de service", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                        local info = 'swat3'
                        TriggerServerEvent('police:PriseEtFinservice', info)
                    end
                })

                RageUI.Separator("↓ ~r~ Bouclier ~w~ ↓")

                RageUI.Button("Prendre/Poser un bouclier", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                        ExecuteCommand("swatS")
                    end
                })
                    

		   end)

           RageUI.IsVisible(subMenu9,function() 

            RageUI.Button("Prise de service", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local info = 'prise'
                    TriggerServerEvent('police:PriseEtFinservice', info)
                end
            })

            RageUI.Button("Fin de service", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local info = 'fin'
                    TriggerServerEvent('police:PriseEtFinservice', info)
                end
            })

            RageUI.Button("Pause de service", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local info = 'pause'
                    TriggerServerEvent('police:PriseEtFinservice', info)
                end
            })

            RageUI.Button("Standby", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local info = 'standby'
                    TriggerServerEvent('police:PriseEtFinservice', info)
                end
            })

            RageUI.Button("Control en cours", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local info = 'control'
                    TriggerServerEvent('police:PriseEtFinservice', info)
                end
            })

            RageUI.Button("Refus d'obtempérer", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local info = 'refus'
                    TriggerServerEvent('police:PriseEtFinservice', info)
                end
            })

            RageUI.Button("Crime en cours", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local info = 'crime'
                    TriggerServerEvent('police:PriseEtFinservice', info)
                end
            })

           end)

           RageUI.IsVisible(subMenu10,function() 

            RageUI.Button("Petite demande", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local raison = 'petit'
                    local elements  = {}
                    local playerPed = PlayerPedId()
                    local coords  = GetEntityCoords(playerPed)
                    local name = GetPlayerName(PlayerId())
                    ExecuteCommand("me La personne fait un petit appel de renfort")
                TriggerServerEvent('renfort', coords, raison)
                TriggerServerEvent('Tpolice:petitedemanderenfort')
                end
            })

            RageUI.Button("Moyenne demande", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local raison = 'importante'
                    local elements  = {}
                    local playerPed = PlayerPedId()
                    local coords  = GetEntityCoords(playerPed)
                    local name = GetPlayerName(PlayerId())
                    ExecuteCommand("me La personne fait un appel de renfort")
                TriggerServerEvent('renfort', coords, raison)
                TriggerServerEvent('Tpolice:moyennedemanderenfort')
                end
            })

            
            RageUI.Button("Grosse demande", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local raison = 'omgad'
                    local elements  = {}
                    local playerPed = PlayerPedId()
                    local coords  = GetEntityCoords(playerPed)
                    local name = GetPlayerName(PlayerId())
                    ExecuteCommand("me La personne fait un code 99")
                TriggerServerEvent('renfort', coords, raison)
                TriggerServerEvent('Tpolice:code99')
                end
            })

           end)

           RageUI.IsVisible(subMenu11,function() 

            local coords  = GetEntityCoords(PlayerPedId())
            local vehicle = ESX.Game.GetVehicleInDirection()

            RageUI.Button("Rechercher une plaque", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    LookupVehicle()
                    RageUI.CloseAll()
                end
            })	

            RageUI.Button("Mettre en fourrière", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    local playerPed = PlayerPedId()

                    if IsPedSittingInAnyVehicle(playerPed) then
                        local vehicle = GetVehiclePedIsIn(playerPed, false)
        
                        if GetPedInVehicleSeat(vehicle, -1) == playerPed then
                            ESX.ShowNotification('la voiture a été mis en fourrière')
                            ESX.Game.DeleteVehicle(vehicle)
                           
                        else
                            ESX.ShowNotification('met toi côté conducteur pour la mettre en fourrière ou sort de la voiture')
                        end
                    else
                        local vehicle = ESX.Game.GetVehicleInDirection()
        
                        if DoesEntityExist(vehicle) then
                            ESX.ShowNotification('Voiture à été envoyer à la fourrière')
                            ESX.Game.DeleteVehicle(vehicle)
        
                        else
                            ESX.ShowNotification('~r~Aucun véhicule')
                        end
                    end
                end		
            })

           end)

           RageUI.IsVisible(subMenu12,function() 

            RageUI.Button("Sortir/Rentrer le chien", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    if not DoesEntityExist(policeDog) then
                        RequestModel(351016938)
                        while not HasModelLoaded(351016938) do Wait(0) end
                        policeDog = CreatePed(4, 351016938, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 1.0, -0.98), 0.0, true, false)
                        SetEntityAsMissionEntity(policeDog, true, true)
                        ESX.ShowNotification('~g~Chien Spawn')
                        TriggerServerEvent('Tpolice:chiensortis')
                    else
                        ESX.ShowNotification('~r~Chien Rentrer')
                        TriggerServerEvent('Tpolice:chienrentre')
                        DeleteEntity(policeDog)
                end
            end
            })
            
            RageUI.Button("Assis", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    if DoesEntityExist(policeDog) then
                        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(policeDog), true) <= 5.0 then
                            if IsEntityPlayingAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 3) then
                                ClearPedTasks(policeDog)
                            else
                                loadDict('rcmnigel1c')
                                TaskPlayAnim(PlayerPedId(), 'rcmnigel1c', 'hailing_whistle_waive_a', 8.0, -8, -1, 120, 0, false, false, false)
                                Wait(2000)
                                loadDict("creatures@rottweiler@amb@world_dog_sitting@base")
                                TaskPlayAnim(policeDog, "creatures@rottweiler@amb@world_dog_sitting@base", "base", 8.0, -8, -1, 1, 0, false, false, false)
                            end
                        else
                            ESX.ShowNotification('dog_too_far')
                        end
                    else
                        ESX.ShowNotification('no_dog')
                end
            end
            })

            loadDict = function(dict)
                while not HasAnimDictLoaded(dict) do Wait(0) RequestAnimDict(dict) end
            end

            RageUI.Button("Chercher de la drogue", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    if DoesEntityExist(policeDog) then
                        if not IsPedDeadOrDying(policeDog) then
                            if GetDistanceBetweenCoords(GetEntityCoords(policeDog), GetEntityCoords(PlayerPedId()), true) <= 3.0 then
                                local player, distance = ESX.Game.GetClosestPlayer()
                                if distance ~= -1 then
                                    if distance <= 3.0 then
                                        local playerPed = GetPlayerPed(player)
                                        if not IsPedInAnyVehicle(playerPed, true) then
                                            TriggerServerEvent('esx_policedog:hasClosestDrugs', GetPlayerServerId(player))
                                        end
                                    end
                                end
                            end
                        else
                            ESX.ShowNotification('Votre chien est mort')
                        end
                    else
                        ESX.ShowNotification('Vous n\'avez pas de chien')
                end
            end
            })

            RageUI.Button("Lui dire d'attaquer", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    if DoesEntityExist(policeDog) then
                        if not IsPedDeadOrDying(policeDog) then
                            if GetDistanceBetweenCoords(GetEntityCoords(policeDog), GetEntityCoords(PlayerPedId()), true) <= 3.0 then
                                local player, distance = ESX.Game.GetClosestPlayer()
                                if distance ~= -1 then
                                    if distance <= 3.0 then
                                        local playerPed = GetPlayerPed(player)
                                        if not IsPedInCombat(policeDog, playerPed) then
                                            if not IsPedInAnyVehicle(playerPed, true) then
                                                TaskCombatPed(policeDog, playerPed, 0, 16)
                                            end
                                        else
                                            ClearPedTasksImmediately(policeDog)
                                        end
                                    end
                                end
                            end
                        else
                            ESX.ShowNotification('Votre chien est mort')
                        end
                    else
                        ESX.ShowNotification('Vous n\'avez pas de chien')
                end
            end
            })

           end)

		 Wait(0)
		end
	 end)
  end
end

Keys.Register('F6', 'Police', 'Ouvrir le menu Police', function()
	if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then
    	OpenMenu8()
	end
end)

RegisterNetEvent("shield:ToggleSwatShield")
AddEventHandler("shield:ToggleSwatShield", function()
  Citizen.CreateThread(function()
    if not shield then
      local ped = GetPlayerPed(-1)
      local propName = "prop_jswat_shield"
      local coords = GetEntityCoords(ped)
      local prop = GetHashKey(propName)

      local dict = "weapons@first_person@aim_rng@generic@light_machine_gun@combat_mg@"
      local name = "wall_block_low"

      while not HasAnimDictLoaded(dict) do
        Citizen.Wait(10)
        RequestAnimDict(dict)
      end

      RequestModel(prop)
      while not HasModelLoaded(prop) do
        Citizen.Wait(100)
      end

      local attachProps = CreateObject(prop, coords,  true,  false,  false)
      local netid = ObjToNet(attachProps)

      TaskPlayAnim(ped,dict,name,1.0,4.0,-1,49,0,0,0,0)
      AttachEntityToEntity(attachProps,ped,GetPedBoneIndex(ped, 57005),0.21,0.01,0.11,-72.0,85.0,80.0, false, false, false, true, 2, true)

      shield_net = netid
      shield = true
      TriggerServerEvent('Tpolice:boucliersortis')  
    else
      shield = false
      TriggerServerEvent('Tpolice:bouclierranger')  
      ClearPedSecondaryTask(GetPlayerPed(PlayerId()))
      SetModelAsNoLongerNeeded(prop)
      SetEntityAsMissionEntity(attachProps, true, false)
      DetachEntity(NetToObj(shield_net), 1, 1)
      DeleteEntity(NetToObj(shield_net))
      
      shield_net = nil
    end
  end)
end)
function OpenIdentityCardMenu(player)
	ESX.TriggerServerCallback('esx_policejob:getOtherPlayerData', function(data)
		local elements = {
			{label = 'Nom Prénom', data.name}
		}

		if Config.EnableESXIdentity then
			table.insert(elements, {label = 'sex', data.sex})
			table.insert(elements, {label = 'dob', data.dob})
			table.insert(elements, {label = 'height', data.height})
		end

		if data.drunk then
			table.insert(elements, {label = 'bac', data.drunk})
		end

		if data.licenses then
			table.insert(elements, {label = 'license_label'})

			for i=1, #data.licenses, 1 do
				table.insert(elements, {label = data.licenses[i].label})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'citizen_interaction', {
			title    = 'citizen_interaction',
			align    = 'top-left',
			elements = elements
		}, nil, function(data, menu)
			menu.close()
		end)
	end, GetPlayerServerId(player))
end

function OpenBillingMenu()

	ESX.UI.Menu.Open(
	  'dialog', GetCurrentResourceName(), 'billing',
	  {
		title = "Amende"
	  },
	  function(data, menu)
	  
		local amount = tonumber(data.value)
		local player, distance = ESX.Game.GetClosestPlayer()
  
		if player ~= -1 and distance <= 3.0 then
  
		  menu.close()
		  if amount == nil then
			  ESX.ShowNotification("~r~Problèmes~s~: Montant invalide")
		  else
			local playerPed        = GetPlayerPed(-1)
			  TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(player), 'society_police', ('police'), amount)
			  Citizen.Wait(100)
			  ESX.ShowNotification("~r~Vous avez bien envoyer la facture")
		  end
  
		else
		  ESX.ShowNotification("~r~Problèmes~s~: Aucun joueur à proximitée")
		end
  
	  end,
	  function(data, menu)
		  menu.close()
	  end
	)
  end

function OpenVehicleInfosMenu(vehicleData)
	ESX.TriggerServerCallback('esx_policejob:getVehicleInfos', function(retrivedInfo)
		local elements = {{label = _U('plate', retrivedInfo.plate)}}

		if retrivedInfo.owner == nil then
			table.insert(elements, {label = _U('owner_unknown')})
		else
			table.insert(elements, {label = _U('owner', retrivedInfo.owner)})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_infos', {
			css      = 'police',
			title    = _U('vehicle_info'),
			align    = 'top-left',
			elements = elements
		}, nil, function(data, menu)
			menu.close()
		end)
	end, vehicleData.plate)
end

function LookupVehicle()
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'lookup_vehicle', {
		title = _U('search_database_title'),
	}, function(data, menu)
		local length = string.len(data.value)
		if not data.value or length < 2 or length > 8 then
			ESX.ShowNotification(_U('search_database_error_invalid'))
		else
			ESX.TriggerServerCallback('esx_policejob:getVehicleInfos', function(retrivedInfo)
				local elements = {{label = _U('plate', retrivedInfo.plate)}}
				menu.close()

				if not retrivedInfo.owner then
					table.insert(elements, {label = _U('owner_unknown')})
				else
					table.insert(elements, {label = _U('owner', retrivedInfo.owner)})
				end

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_infos', {
					title    = _U('vehicle_info'),
					align    = 'top-left',
					elements = elements
				}, nil, function(data2, menu2)
					menu2.close()
				end)
			end, data.value)

		end
	end, function(data, menu)
		menu.close()
	end)
end

RegisterNetEvent('renfort:setBlip')
AddEventHandler('renfort:setBlip', function(coords, raison)
	if raison == 'petit' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: ~g~CODE-2\n~w~Importance: ~g~Légère.', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)                          
		color = 2
	elseif raison == 'importante' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: ~g~CODE-3\n~w~Importance: ~o~Importante.', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		color = 47
	elseif raison == 'omgad' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "OOB_Start", "GTAO_FM_Events_Soundset", 1)
		PlaySoundFrontend(-1, "FocusIn", "HintCamSounds", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Demande de renfort', 'Demande de renfort demandé.\nRéponse: ~g~CODE-99\n~w~Importance: ~r~URGENTE !\nDANGER IMPORTANT', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
		PlaySoundFrontend(-1, "FocusOut", "HintCamSounds", 1)
		color = 1
	end
	local blipId = AddBlipForCoord(coords)
	SetBlipSprite(blipId, 161)
	SetBlipScale(blipId, 1.2)
	SetBlipColour(blipId, color)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString('Demande renfort')
	EndTextCommandSetBlipName(blipId)
	Wait(80 * 1000)
	RemoveBlip(blipId)
end)

RegisterNetEvent('police:InfoService')
AddEventHandler('police:InfoService', function(service, nom)
	if service == 'prise' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Prise de service', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-8\n~w~Information: ~g~Prise de service.', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'fin' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Fin de service', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-10\n~w~Information: ~g~Fin de service.', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'pause' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Pause de service', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-6\n~w~Information: ~g~Pause de service.', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'swat1' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('SWAT', '~r~ INFORMATIONS', 'Agent: ~r~'..nom..'\n~w~Code:  ~g~SW-01\n~w~Information: ~g~ Disponible.', 'CHAR_SWAT', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'swat2' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('SWAT', '~r~ INFORMATIONS', 'Agent: ~r~'..nom..'\n~w~Code: ~g~SW-02\n~w~Information: ~r~En attente.', 'CHAR_SWAT', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)	
	elseif service == 'swat3' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('SWAT', '~r~ INFORMATIONS', 'Agent: ~r~'..nom..'\n~w~Code: ~g~SW-03\n~w~Information: ~r~Fin de service.', 'CHAR_SWAT', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'standby' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Mise en standby', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-12\n~w~Information: ~g~Standby, en attente de dispatch.', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'control' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Control routier', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-48\n~w~Information: ~g~Control routier en cours.', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'refus' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Refus d\'obtemperer', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-30\n~w~Information: ~g~Refus d\'obtemperer / Delit de fuite en cours.', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	elseif service == 'crime' then
		PlaySoundFrontend(-1, "Start_Squelch", "CB_RADIO_SFX", 1)
		ESX.ShowAdvancedNotification('LSPD INFORMATIONS', '~b~Crime en cours', 'Agent: ~g~'..nom..'\n~w~Code: ~g~10-31\n~w~Information: ~g~Crime en cours / poursuite en cours.', 'CHAR_ABIGAIL', 8)
		Wait(1000)
		PlaySoundFrontend(-1, "End_Squelch", "CB_RADIO_SFX", 1)
	end
end)

-------------------------- Intéraction 

RegisterNetEvent('esx_policejob:handcuff')
AddEventHandler('esx_policejob:handcuff', function()

  IsHandcuffed    = not IsHandcuffed;
  local playerPed = GetPlayerPed(-1)

  Citizen.CreateThread(function()

    if IsHandcuffed then

        RequestAnimDict('mp_arresting')
        while not HasAnimDictLoaded('mp_arresting') do
            Citizen.Wait(100)
        end

      TaskPlayAnim(playerPed, 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)
      DisableControlAction(2, 37, true)
      SetEnableHandcuffs(playerPed, true)
      SetPedCanPlayGestureAnims(playerPed, false)
      FreezeEntityPosition(playerPed,  true)
      DisableControlAction(0, 24, true) -- Attack
      DisableControlAction(0, 257, true) -- Attack 2
      DisableControlAction(0, 25, true) -- Aim
      DisableControlAction(0, 263, true) -- Melee Attack 1
      DisableControlAction(0, 37, true) -- Select Weapon
      DisableControlAction(0, 47, true)  -- Disable weapon
      DisplayRadar(false)

    else

      ClearPedSecondaryTask(playerPed)
      SetEnableHandcuffs(playerPed, false)
      SetPedCanPlayGestureAnims(playerPed,  true)
      FreezeEntityPosition(playerPed, false)
	  DisplayRadar(true)

    end

  end)
end)

RegisterNetEvent('esx_policejob:drag')
AddEventHandler('esx_policejob:drag', function(cop)
  IsDragged = not IsDragged
  CopPed = tonumber(cop)
end)

Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsHandcuffed then
      if IsDragged then
        local ped = GetPlayerPed(GetPlayerFromServerId(CopPed))
        local myped = GetPlayerPed(-1)
        AttachEntityToEntity(myped, ped, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
      else
        DetachEntity(GetPlayerPed(-1), true, false)
      end
    end
  end
end)

RegisterNetEvent('esx_policejob:putInVehicle')
AddEventHandler('esx_policejob:putInVehicle', function()

  local playerPed = GetPlayerPed(-1)
  local coords    = GetEntityCoords(playerPed)

  if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

    local vehicle = GetClosestVehicle(coords.x,  coords.y,  coords.z,  5.0,  0,  71)

    if DoesEntityExist(vehicle) then

      local maxSeats = GetVehicleMaxNumberOfPassengers(vehicle)
      local freeSeat = nil

      for i=maxSeats - 1, 0, -1 do
        if IsVehicleSeatFree(vehicle,  i) then
          freeSeat = i
          break
        end
      end

      if freeSeat ~= nil then
        TaskWarpPedIntoVehicle(playerPed,  vehicle,  freeSeat)
      end

    end

  end

end)

RegisterNetEvent('esx_policejob:OutVehicle')
AddEventHandler('esx_policejob:OutVehicle', function(t)
  local ped = GetPlayerPed(t)
  ClearPedTasksImmediately(ped)
  plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
  local xnew = plyPos.x+2
  local ynew = plyPos.y+2

  SetEntityCoords(GetPlayerPed(-1), xnew, ynew, plyPos.z)
end)

-- Handcuff
Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsHandcuffed then
      DisableControlAction(0, 142, true) -- MeleeAttackAlternate
      DisableControlAction(0, 30,  true) -- MoveLeftRight
      DisableControlAction(0, 31,  true) -- MoveUpDown
    end
  end
end)

----------------------------------------------- Fouiller

function OpenBodySearchMenu(player)
	ESX.TriggerServerCallback('esx_policejob:getOtherPlayerData', function(data)
		local elements = {}

		for i=1, #data.accounts, 1 do
			if data.accounts[i].name == 'black_money' and data.accounts[i].money > 0 then
				table.insert(elements, {
					label    = 'argent sale ', ESX.Math.Round(data.accounts[i].money),
					value    = 'black_money',
					itemType = 'item_account',
					amount   = data.accounts[i].money
				})

				break
			end
		end

		table.insert(elements, {label = 'Armes'})

		for i=1, #data.weapons, 1 do
			table.insert(elements, {
				label    = ESX.GetWeaponLabel(data.weapons[i].name)..' avec '..data.weapons[i].ammo.. ' Munitions',
				value    = data.weapons[i].name,
				itemType = 'item_weapon',
				amount   = data.weapons[i].ammo
			})
		end

		table.insert(elements, {label = 'Items'})

		for i=1, #data.inventory, 1 do
			if data.inventory[i].count > 0 then
				table.insert(elements, {
					label    = data.inventory[i].count..' x'..data.inventory[i].label,
					value    = data.inventory[i].name,
					itemType = 'item_standard',
					amount   = data.inventory[i].count
				})
			end
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'body_search', {
			title    = 'fouille',
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			if data.current.value then
				TriggerServerEvent('esx_policejob:confiscatePlayerItem', GetPlayerServerId(player), data.current.itemType, data.current.value, data.current.amount)
				OpenBodySearchMenu(player)
			end
		end, function(data, menu)
			menu.close()
		end)
	end, GetPlayerServerId(player))
end

--- Blip 

Citizen.CreateThread(function()
    local policemap = AddBlipForCoord(439.14, -982.3, 30.69)
    SetBlipSprite(policemap, 60)
    SetBlipColour(policemap, 38)
    SetBlipScale(policemap, 0.80)
    SetBlipAsShortRange(policemap, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString("~b~Police~s~")
    EndTextCommandSetBlipName(policemap)
end)


--- Boss 

local societypolicemoney = nil

local open = false 
local boss = RageUI.CreateMenu('Boss Action', 'interaction')
boss.Display.Header = true 
boss.Closed = function()
  open = false
end


function MenuBossPolice()
	if open then 
		open = false
		RageUI.Visible(boss, false)
		return
	else
		open = true 
		RageUI.Visible(boss, true)
		CreateThread(function()
		while open do 
		   RageUI.IsVisible(boss,function() 


            if societypolicemoney ~= nil then
            RageUI.Button("Argent société :", nil, {RightLabel = "$" .. societypolicemoney}, true , {
            })
            end

            RageUI.Separator("~h~~p~↓ Gestion de l'entreprise ↓")

			 RageUI.Button("Retirer argent de société", nil, {RightLabel = "→"}, true , {
				 onSelected = function()
                    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'withdraw_society_money_amount_' .. 'police',
                    {
                        title = ('Montant')
                    }, function(data, menu)
                    local amount = tonumber(data.value)

                if amount == nil then
                    ESX.ShowNotification('Montant invalide')
                else
                    menu.close()
                    TriggerServerEvent('esx_society:withdrawMoney', 'police', amount)
                    RefreshpoliceMoney()
                        end
                    end)
				end
			 })

			 RageUI.Button("Déposer argent de société", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_money_amount_' .. 'police',
                    {
                        title = ('Montant')
                    }, function(data, menu)
        
                        local amount = tonumber(data.value)
        
                        if amount == nil then
                            ESX.ShowNotification('Montant invalide')
                        else
                            menu.close()
                            TriggerServerEvent('esx_society:depositMoney', 'police', amount)
                            RefreshpoliceMoney()
                        end
                    end)
				end
			 })

             RageUI.Button("Accéder aux actions de Management", nil, {RightLabel = "→"}, true , {
				onSelected = function()
                    pboss()
                    RageUI.CloseAll()
                        end
			 })

		   end)
		 Wait(0)
		end
	 end)
  end
end


function RefreshpoliceMoney()
    if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.grade_name == 'boss' then
        ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
            UpdateSocietypoliceMoney(money)
        end, ESX.PlayerData.job.name)
    end
end

function UpdateSocietypoliceMoney(money)
    societypolicemoney = ESX.Math.GroupDigits(money)
end

function KeyboardInput(TextEntry, ExampleText, MaxStringLength)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end

----OUVRIR LE MENU------------

local position29 = {
    {x = 471.62, y = -1005.45, z = 30.72}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position29) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' and ESX.PlayerData.job.grade_name == 'boss' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position29[k].x, position29[k].y, position29[k].z)

            if dist <= 5.0 then
            wait = 0
            DrawMarker(22, 471.62, -1005.45, 30.69, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 0, 0 , 255, true, true, p19, true)  

        
            if dist <= 1.0 then
               wait = 0
                Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour accéder aux ~r~actions patron", 1) 
                if IsControlJustPressed(1,51) then
                    RefreshpoliceMoney()
                    MenuBossPolice()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

function pboss()
    TriggerEvent('esx_society:openBossMenu', 'police', function(data, menu)
        menu.close()
    end, {wash = false})
end

function KeyboardInput(TextEntry, ExampleText, MaxStringLength)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end

--- Vestiaire

    function vestiairepolice()
        local vestiaire = RageUI.CreateMenu("~y~Vestiaire", "Police")
        RageUI.Visible(vestiaire, not RageUI.Visible(vestiaire))
            while vestiaire do
            Citizen.Wait(0)
        RageUI.IsVisible(vestiaire,function() 

                RageUI.Separator("~y~↓ Votre Tenue ↓")

                    if ESX.PlayerData.job.grade_name == 'recruit' then
                        RageUI.Button("Tenue Recrue", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                            tenuerecrue()
                            RageUI.CloseAll()
                        end
                    })

                end

                    if ESX.PlayerData.job.grade_name == 'officer' then
                        RageUI.Button("Tenue Officier", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                            tenueofficier()
                            RageUI.CloseAll()
                        end
                    })
                end

                    if ESX.PlayerData.job.grade_name == 'sergeant' then
                    RageUI.Button("Tenue Sergent", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                            tenuesergeant()
                            RageUI.CloseAll()
                        end
                    })
                end

                if ESX.PlayerData.job.grade_name == 'swat' or ESX.PlayerData.job.grade_name == 'lieutenant' or ESX.PlayerData.job.grade_name == 'boss' then
                    RageUI.Button("Tenue Swat", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                        tenueswat()
                        RageUI.CloseAll()
                    end
                })
                end

                    if ESX.PlayerData.job.grade_name == 'lieutenant' then
                        RageUI.Button("Tenue Lieutenant", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                            tenuelieutenant()
                            RageUI.CloseAll()
                        end
                    })
                end

                    if ESX.PlayerData.job.grade_name == 'boss' then
                        RageUI.Button("Tenue Commandant", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                            tenueboss()
                            RageUI.CloseAll()
                        end
                    })
                end

                RageUI.Button("Remettre sa tenue", nil, {RightLabel = "→"}, true , {
                        onSelected = function()
                            civilpolice()
                            RageUI.CloseAll()
                        end
                    })

            RageUI.Separator("~g~↓ Gilet par balle ↓")
            RageUI.Button("Mettre", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    mettrebullet_wear()
                    SetPedArmour(GetPlayerPed(-1), 100)
                end
            })

            RageUI.Button("Enlever", nil, {RightLabel = "→"}, true , {
                onSelected = function()
                    enleverbullet_wear()
                    SetPedArmour(GetPlayerPed(-1), 0)
                end
            })
                end, function()
                end)
            if not RageUI.Visible(vestiaire) then
                vestiaire = RMenu:DeleteType("vestiaire", true)
        end
    end
end

local position10 = {
    {x = 470.87, y = -987.19, z = 25.73}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position10) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position10[k].x, position10[k].y, position10[k].z)

            if dist <= 15.0 then
            wait = 0
            DrawMarker(22, 470.87, -987.19, 25.73, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 0, 0 , 255, true, true, p19, true)    

        
            if dist <= 1.0 then
               wait = 0
                Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour accéder au ~b~vestiaire", 1) 
                if IsControlJustPressed(1,51) then
                vestiairepolice()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

function tenuerecrue()
    TriggerEvent('skinchanger:getSkin', function(skin)
        local uniformObject
        if skin.sex == 0 then
            uniformObject = Config.Uniforms.recruit.male
        else
            uniformObject = Config.Uniforms.recruit.female
        end
        if uniformObject then
            TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
        end
    end)
end

function tenueofficier()
    TriggerEvent('skinchanger:getSkin', function(skin)
        local uniformObject
        if skin.sex == 0 then
            uniformObject = Config.Uniforms.officer.male
        else
            uniformObject = Config.Uniforms.officer.female
        end
        if uniformObject then
            TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
        end
    end)
end

function tenuesergeant()
    TriggerEvent('skinchanger:getSkin', function(skin)
        local uniformObject
        if skin.sex == 0 then
            uniformObject = Config.Uniforms.sergeant.male
        else
            uniformObject = Config.Uniforms.sergeant.female
        end
        if uniformObject then
            TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
        end
    end)
end

function tenueswat()
    TriggerEvent('skinchanger:getSkin', function(skin)
        local uniformObject
        if skin.sex == 0 then
            uniformObject = Config.Uniforms.lieutenant.male
        else
            uniformObject = Config.Uniforms.lieutenant.female
        end
        if uniformObject then
            TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
        end
    end)
end

function tenuelieutenant()
    TriggerEvent('skinchanger:getSkin', function(skin)
        local uniformObject
        if skin.sex == 0 then
            uniformObject = Config.Uniforms.lieutenant.male
        else
            uniformObject = Config.Uniforms.lieutenant.female
        end
        if uniformObject then
            TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
        end
    end)
end

function tenueboss()
    TriggerEvent('skinchanger:getSkin', function(skin)
        local uniformObject
        if skin.sex == 0 then
            uniformObject = Config.Uniforms.boss.male
        else
            uniformObject = Config.Uniforms.boss.female
        end
        if uniformObject then
            TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
        end
    end)
end

function mettrebullet_wear()
    TriggerEvent('skinchanger:getSkin', function(skin)
        local uniformObject
        if skin.sex == 0 then
            uniformObject = Config.Uniforms.bullet_wear.male
        else
            uniformObject = Config.Uniforms.bullet_wear.female
        end
        if uniformObject then
            TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
        end
    end)
end

function enleverbullet_wear()
    TriggerEvent('skinchanger:getSkin', function(skin)
        local uniformObject
        if skin.sex == 0 then
            uniformObject = Config.Uniforms.bullet_wearno.male
        else
            uniformObject = Config.Uniforms.bullet_wearno.female
        end
        if uniformObject then
            TriggerEvent('skinchanger:loadClothes', skin, uniformObject)
        end
    end)
end


function civilpolice()
ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
TriggerEvent('skinchanger:loadSkin', skin)
end)
end

--- Coffre 

function Coffrepolice()
    local policecoffre = RageUI.CreateMenu("Coffre", "Police")
        RageUI.Visible(policecoffre, not RageUI.Visible(policecoffre))
            while policecoffre do
            Citizen.Wait(0)
            RageUI.IsVisible(policecoffre,function() 

                RageUI.Separator("~y~↓ Objet ↓")

                RageUI.Button("~g~Retirer", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                        Tretirer()
                        RageUI.CloseAll()
                    end
                })
                    

                RageUI.Button("~g~Déposer", nil, {RightLabel = "→"}, true , {
                    onSelected = function()
                        TDeposer()
                        RageUI.CloseAll()
                    end
                })

                end, function()
                end)
                if not RageUI.Visible(policecoffre) then
                policecoffre = RMenu:DeleteType("policecoffre", true)
        end
    end
end

local position99 = {
    {x = 484.82, y = -1007.07, z = 25.73}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position99) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'police' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position99[k].x, position99[k].y, position99[k].z)

            if dist <= 15.0 then
            wait = 0
            DrawMarker(22, 484.82, -1007.07, 25.83, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 0, 0 , 255, true, true, p19, true)    

        
            if dist <= 1.0 then
               wait = 0
                Visual.Subtitle("Appuyer sur ~b~[E]~s~ pour accéder au ~b~coffre", 1) 
                if IsControlJustPressed(1,51) then
                    Coffrepolice()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

itemstock = {}
function Tretirer()
    local TPstock = RageUI.CreateMenu("Coffre", "Police")
    ESX.TriggerServerCallback('Tpolice:getStockItems', function(items) 
    itemstock = items
   
    RageUI.Visible(TPstock, not RageUI.Visible(TPstock))
        while TPstock do
            Citizen.Wait(0)
                    RageUI.IsVisible(TPstock,function() 
                        for k,v in pairs(itemstock) do 
                            if v.count > 0 then

                                RageUI.Button(v.label, nil, {RightLabel = v.count}, true , {
                                    onSelected = function()
                                        local count = KeyboardInput("Combien ?", "", 2)
                                        TriggerServerEvent('Tpolice:getStockItem', v.name, tonumber(count))
                                        Tretirer()
                                    end
                                })

                        end
                    end
                end, function()
                end)
            if not RageUI.Visible(TPstock) then
                TPstock = RMenu:DeleteType("Coffre", true)
        end
    end
     end)
end

function TDeposer()
    local Tstock = RageUI.CreateMenu("Coffre", "Police")
    ESX.TriggerServerCallback('Tpolice:getPlayerInventory', function(inventory)
        RageUI.Visible(Tstock, not RageUI.Visible(Tstock))
    while Tstock do
        Citizen.Wait(0)
                RageUI.IsVisible(Tstock,function() 
                for i=1, #inventory.items, 1 do
                    if inventory ~= nil then
                         local item = inventory.items[i]
                            if item.count > 0 then

                                RageUI.Button(item.label, nil, {RightLabel = item.count}, true , {
                                    onSelected = function()
                                        local count = KeyboardInput("Combien ?", '' , 8)
                                        TriggerServerEvent('Tpolice:putStockItems', item.name, tonumber(count))
                                        TDeposer()
                                    end
                                })

                            end
                    end
                end
                    end, function()
                    end)
                if not RageUI.Visible(Tstock) then
                    Tstock = RMenu:DeleteType("Coffre", true)
            end
        end
    end)
end