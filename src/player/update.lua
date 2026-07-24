src.player = {}

function src.player.update(dt)
    local imageWidth, imageHeight = playerSprite:getDimensions()
    local scaleX =  tileSize / imageWidth
    local scaleY =  tileSize / imageHeight * 2
    gravityDelay = .25
    gravityTimer = gravityTimer + dt--1 / love.timer.getFPS()

    if gravityTimer >= gravityDelay then
        print("tick")
        gravityTimer = 0
        if canMove(player.x, player.y + 2) then
            -- player.y = player.y + 1
        end
    end

    cam:lookAt(player.x * tileSize + .5 * tileSize, player.y * tileSize + 1*tileSize)
    player.y = math.max(1,math.min(#world, player.y))
end

return src.player.update