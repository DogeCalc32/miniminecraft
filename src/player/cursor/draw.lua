src.player.cursor = {}

function src.player.cursor.draw()
    local mx, my = love.mouse.getPosition()
    local wx, wy = cam:worldCoords(mx, my)

    local imageWidth, imageHeight = player.sprite:getDimensions()
    local scaleX = tileSize / imageWidth
    local scaleY = tileSize / imageHeight * 2

    local tx = math.floor(wx / tileSize)
    local ty = math.floor(wy / tileSize)

    -- blockSelection drawing
    love.graphics.draw(assets.player.blockSelection,
        tx * tileSize,
        ty * tileSize,
        nil,
        scaleX,
        scaleY)
end

return src.player.cursor.draw
