print("^2Ramzz-Politiskilt-Resource-Running")

config = {}

config.FrameworkResource = 'qb-core' -- Name of your qb-core resource
config.InvType = 'qb' -- The type of inventory you're using (qb, ox)
config.InvName = 'qb-inventory' -- The name of your qb-inventory resource (qb-inventory, lj-inventory, ox_inventory, etc...)

config.PoliceItem = 'politiskilt' -- The item to check for in the inventory

config.Badge = {
    {ClothingMaleID = 0, MaleTextureID = 0, ClothingFemaleID = 0, FemaleTextureID = 0, InsideWeight = 5000, Slots = 5, Item = 'politiskilt'},
}

