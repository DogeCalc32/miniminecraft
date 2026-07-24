saveLibraries = {}

function savePlayerData()
    local playerDataJson = json.encode(player:getPlayerSaveData())
    love.filesystem.write("saveData.json",playerDataJson)
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

function createWorld()
    local world = {
        width = 200,
        height = 200,
        tiles = {}
    }

    for y = 1, world.height do
        world.tiles[y] = {}
        for x = 1, world.width do
            world.tiles[y][x] = 0 -- air
        end
    end
    local data = json.encode(world)
    love.filesystem.write("world.json", data)
end

function loadWorld()
    local data = love.filesystem.read("world.json")
    local world = json.decode(data)
end

return saveLibraries