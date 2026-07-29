saveLibraries = {}

function savePlayerData()
    local worldDataJson = json.encode(world:getSaveData())
    local playerDataJson = json.encode(player:getPlayerSaveData())
    love.filesystem.write("saveData.json", playerDataJson)
    love.filesystem.write("world.json", worldDataJson)
    print("file saved")
end

function loadPlayerData()
    local saveFile = love.filesystem.read("saveData.json")
    if saveFile == nil then
        print("No save found.")
        return
    end
    print("loading")
    local saveData = json.decode(saveFile)
    for key, value in pairs(saveData) do
        player[key] = value
    end
    print("done!")
end

function loadWorld()
    if love.filesystem.read("world.json") == nil then return end
    local data = love.filesystem.read("world.json")
    local worldData = json.decode(data)
    world = worldData
end

return saveLibraries
