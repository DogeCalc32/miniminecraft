src.player = {}

function src.player.update(dt)
    deltaTime = dt
    local imageWidth, imageHeight = player.sprite:getDimensions()
    local scaleX = tileSize / imageWidth
    local scaleY = tileSize / imageHeight * 2
    gravityDelay = .2
    gravityTimer = gravityTimer + dt --1 / love.timer.getFPS()

    if gravityTimer >= gravityDelay then
        print("tick")
        gravityTimer = 0
        tryMove(0, 1)
        player.y = math.max(1, math.min(#world, player.y))
    end

    cam:lookAt(player.x * tileSize + .5 * tileSize, player.y * tileSize + 1 * tileSize)
end

return src.player.update
