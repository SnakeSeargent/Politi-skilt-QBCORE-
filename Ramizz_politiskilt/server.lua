QBCore = exports[config.FrameworkResource]:GetCoreObject()

local loadFile = LoadResourceFile(GetCurrentResourceName(), "./IdList.json")
local IdList = json.decode(loadFile)

local function GenerateID(id)
    local id = math.random(1000000000,9999999999)
    for i = 1,#IdList,1 do
        while IdList[i] == id do
            id = math.random(1000000000,9999999999)
        end
    end
    IdList[#IdList+1] = id
    SaveResourceFile(GetCurrentResourceName(), "IdList.json", json.encode(IdList), 0)
    return id
end

for i = 1, #config.Badge, 1 do
    QBCore.Functions.CreateUseableItem(config.Badge[i].Item, function(source, item)
        if not item.info.id then
            local Player = QBCore.Functions.GetPlayer(source)
            local newitem = Player.PlayerData.items[item.slot]
            newitem.info.id = GenerateID()
            exports[config.InvName]:SetInventory(source, Player.PlayerData.items)
            TriggerClientEvent('ramizzbadge:client:checkbadge', source, newitem.info.id, i)
        else
            TriggerClientEvent('ramizzbadge:client:checkbadge', source, item.info.id, i)
        end
    end)
end

--## DU BURDE IKKE RØRE DENNE FIL HVIS DU IKKE VED NOGET OM KODNING ##--