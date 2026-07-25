-- main.lua

function love.load()
    w = love.graphics.getWidth()
    h = love.graphics.getHeight()
    tileSize = 32
    gravityTimer = 0
    love.graphics.setDefaultFilter('nearest', 'nearest')

    json = require("libraries/json")
    -- sti = require 'libraries/sti'
    camera = require("libraries/camera")
    -- wf = require "libraries/windfield"
    saveLibraries = require("src/save")
    cam = camera()

    world = require("data/world")

    src = require("data/src")
    player = require("data/player")
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

function love.draw()
    love.graphics.setColor(.53, .75, .99)
    love.graphics.rectangle("fill", 0, 0, w, h)
    cam:attach()
    src.blocks.draw()
    src.player.draw()
    src.player.cursor.draw()
    cam:detach()
    src.player.hud.draw()
end
