src.player = {}

function src.player.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
    if key == "f1" then
        savePlayerData()
    end
    if key == "f2" then
        loadPlayerData()
        loadWorld()
    end
    if key == "a" then
        gravityTimer = gravityTimer - .1
        player.sprite = steve.left
        tryMove(-1, 0)
    elseif key == "d" then
        gravityTimer = gravityTimer - .1
        player.sprite = steve.right
        tryMove(1, 0)
    elseif key == "s" then
        tryMove(0, 1)
    end
    if key == "w" or key == "space" and player.y + 2 < #world then
        gravityTimer = gravityTimer - .1
        if world[player.y + 2][player.x] >= 1 then
            tryMove(0, -1)
        end
    end

    player.x = math.max(1, math.min(#world[1], player.x))
end

return src.player.keypressed
