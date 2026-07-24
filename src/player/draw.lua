src.player = {}

function src.player.draw()
    love.graphics.setColor(1,1,1)
    local imageWidth, imageHeight = playerSprite:getDimensions()
    local scaleX =  tileSize / imageWidth
    local scaleY =  tileSize / imageHeight * 2
    local mx , my = love.mouse.getPosition()
    local tx,ty = math.floor(math.floor(mx) / tileSize), math.floor(math.floor(my)/tileSize)

    love.graphics.draw(assets.player.blockSelection,tx*tileSize,ty*tileSize,nil,scaleX,scaleY)-- blockSelection draw line
    love.graphics.draw(playerSprite,player.x * tileSize,player.y * tileSize,nil,scaleX,scaleY)-- playerSprite draw line
end

return src.player.draw