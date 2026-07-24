src.player = {}

function src.player.mousepressed(mx,my,button)
    local tx = math.floor(mx / tileSize)
    local ty = math.floor(my / tileSize)

    if type(tx) == "number" and type(ty) == "number" then
        if button == 1 then
            world[ty][tx] = 0
        elseif button == 2 then
            world[ty][tx] = player.selectedBlock
        end
    end
end

return src.player.mousepressed