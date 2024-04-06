QBCore = exports[config.FrameworkResource]:GetCoreObject()

local function GenderCheck()
    local PlayerPed = PlayerPedId()
    if IsPedModel(PlayerPed, "mp_m_freemode_01") then
        gender = 'male'
    elseif IsPedModel(PlayerPed, "mp_f_freemode_01") then
        gender = 'female'
    else
        gender = 'custom'
    end
    return gender
end

local function ItemCheck()
    local PlayerPed = PlayerPedId()
    local PlayerGender = GenderCheck()
    if QBCore.Functions.HasItem(config.PoliceItem) then
        if PlayerGender == 'male' then
            SetPedComponentVariation(PlayerPed, 10, 174, 0, 0) -- Male variation
        elseif PlayerGender == 'female' then
            SetPedComponentVariation(PlayerPed, 10, 191, 0, 0) -- Female variation
        end
    else
        SetPedComponentVariation(PlayerPed, 10, 0, 0, 0) -- Reset variation if item is not in inventory
    end
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    Wait(1000)
    ItemCheck()
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    Wait(1000)
    ItemCheck()
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function()
    Wait(1000)
    ItemCheck()
end)

AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
        Wait(1000)
        ItemCheck()
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        Wait(1000)
        ItemCheck()
    end
end)
