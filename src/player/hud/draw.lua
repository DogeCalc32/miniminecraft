src.player.hud = {}

function src.player.hud.draw()
    local mx , my = love.mouse.getPosition()
    local tx,ty = mx / tileSize, my/tileSize
    if gameMode == "creative" then
        
    end
end

return src.player.hud.draw