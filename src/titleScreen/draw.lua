src.titleScreen = {}

function src.titleScreen.draw()
    local spriteWidth, spriteHeight = sprite:getDimensions()
    local scaleX = spriteWidth * (tileSize / 1)
    local scaleY = spriteHeight * tileSize
    love.graphics.draw(assets.titleScreen, 0, 0, nil, scaleX, scaleY)
end

return src.titleScreen.draw
