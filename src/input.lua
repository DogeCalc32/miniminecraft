input = {}

function love.keypressed(key)
    src.player.keypressed(key)
end

function love.mousepressed(x, y, button)
    src.player.mousepressed(x, y, button)
end

function love.wheelmoved(dx, dy)
    src.player.wheelmoved(dx, dy)
end

return input
