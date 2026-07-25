src.player = {}

function src.player.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
    if key == "a" then
        playerSprite = steve.left
        tryMove(-1, 0)
    elseif key == "d" then
        playerSprite = steve.right
        tryMove(1, 0)
    elseif key == "s" then
        tryMove(0, 1)
    end
    if key == "w" or key == "space" and player.y + 2 < #world then
        if world[player.y + 2][player.x] >= 1 then
            tryMove(0, -1)
        end
    end

    player.x = math.max(1, math.min(#world[1], player.x))
    print(player.x .. "  " .. player.y)
end

return src.player.keypressed
