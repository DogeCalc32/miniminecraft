src.player = {}

function src.player.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
    if key == "a" then
        playerSprite = steve.left
        if canMove(player.x - 1, player.y) and canMove(player.x - 1, player.y+1) then
            tryMove(-1,0)
        end
    elseif key == "d" then
        playerSprite = steve.right
        if canMove(player.x + 1, player.y) and canMove(player.x + 1, player.y+1) then
            tryMove(1,0)
        end
    elseif key == "s" then
        if canMove(player.x, player.y + 2) then
            tryMove(0,1)
        end
    end
    if key == "w" or key == "space" then
        if canMove(player.x, player.y - 1) then
            tryMove(0,-1)
        end
    end
    player.x = math.max(1,math.min(#world[1], player.x))
    print(player.x .. "  " .. player.y)
end

return src.player.keypressed