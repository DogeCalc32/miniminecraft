src.player = {}

function src.player.mousepressed(mx, my, button)
    local wx, wy = cam:worldCoords(mx, my)
    local tx = math.floor(wx / tileSize)
    local ty = math.floor(wy / tileSize)

    if ty > #world or ty < 1 or tx < 1 or tx > #world[1] then
        return
    end
    if button == 1 then
        if world[ty][tx] > 9 or world[ty][tx] < 9 then
            world[ty][tx] = 0
        end
    elseif button == 2 then
        if world[ty][tx] > 9 or world[ty][tx] < 9 then
            world[ty][tx] = player.inventory.items[4][player.inventory.currentItem]
        end
    elseif button == 3 then
        if world[ty][tx] > 9 or world[ty][tx] < 9 then
            player.inventory.items[4][player.inventory.currentItem] = world[ty][tx]
        end
    end
end

return src.player.mousepressed
