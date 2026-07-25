src.player = {}

function src.player.mousepressed(mx, my, button)
    local wx, wy = cam:worldCoords(mx, my)
    local tx = math.floor(wx / tileSize)
    local ty = math.floor(wy / tileSize)

    if ty > #world then
        return
    end
    if button == 1 then
        if world[ty][tx] > 9 or world[ty][tx] < 9 then
            world[ty][tx] = 0
        end
    elseif button == 2 then
        if world[ty][tx] > 9 or world[ty][tx] < 9 then
            world[ty][tx] = player.selectedBlock
        end
    end
end

return src.player.mousepressed
