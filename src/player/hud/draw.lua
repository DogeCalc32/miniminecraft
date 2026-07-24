src.player.hud = {}

function src.player.hud.draw()
    local mx, my = love.mouse.getPosition()
    local imageWidth, imageHeight = playerSprite:getDimensions()
    local scaleX = tileSize / imageWidth
    local scaleY = tileSize / imageHeight * 2
    local tx = math.floor(math.floor(mx) / tileSize)
    local ty = math.floor(math.floor(my) / tileSize)

    -- blockSelection drawing line
    love.graphics.draw(assets.player.blockSelection,
        tx * tileSize,
        ty * tileSize,
        nil,
        scaleX,
        scaleY)
end

return src.player.hud.draw
