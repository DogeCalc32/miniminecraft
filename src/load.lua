load = {}

function love.load()
    w = love.graphics.getWidth()
    h = love.graphics.getHeight()
    tileSize = 48
    gravityTimer = 0
    isGameState = true
    love.graphics.setDefaultFilter('nearest', 'nearest')

    json = require("libraries/json")
    camera = require("libraries/camera")
    saveLibraries = require("src/save")
    cam = camera()

    player = require("data/player")
    world = require("data/world")

    src = require("data/src")
    assets = require("data/assets")
    input = require("src/input")
    draw = require("src/draw")
    update = require("src/update")
end

return load
