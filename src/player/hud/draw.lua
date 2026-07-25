src.player.hud = {}

function src.player.hud.draw()
    love.graphics.print(love.timer.getFPS(), 10, 10)
end

return src.player.hud.draw
