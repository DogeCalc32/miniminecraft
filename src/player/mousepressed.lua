src.player = {}

function src.player.mousepressed(mx, my, button)
    local wx, wy = cam:worldCoords(mx, my)
    local tx = math.floor(wx / tileSize)
    local ty = math.floor(wy / tileSize)

    if ty > #world then
        return
    end
    if button == 1 then
        world[ty][tx] = 0
    elseif button == 2 then
        world[ty][tx] = player.selectedBlock
    end
end

return src.player.mousepressed
