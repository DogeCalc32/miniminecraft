-- main.lua

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
end

function love.update(dt)
    src.player.update(dt)
end

function love.keypressed(key)
    src.player.keypressed(key)
end

function love.mousepressed(x, y, button)
    src.player.mousepressed(x, y, button)
end

function love.wheelmoved(dx, dy)
    src.player.wheelmoved(dx, dy)
end

function love.draw()
    if isGameState then
        love.graphics.setColor(.53, .75, .99)
        love.graphics.rectangle("fill", 0, 0, w, h)

        cam:attach() -- camera start
        src.blocks.draw()
        src.player.draw()
        src.player.cursor.draw()
        cam:detach() -- camera end

        src.player.hud.draw()
    elseif isGameState == false then

    end
end
