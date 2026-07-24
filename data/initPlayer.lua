local function initPlayer(player, physics, tileSize)
    local colliderWidth  = tileSize
    local colliderHeight = tileSize * 2

    playerCollider = physics:newBSGRectangleCollider(
        player.x * tileSize + colliderWidth / 2,
        player.y * tileSize + colliderHeight / 2,
        colliderWidth,
        colliderHeight
    )

    playerCollider:setFixedRotation(true)
end

return initPlayer
