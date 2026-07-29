src.player = {}

function src.player.wheelmoved(dx, dy)
    if dy > 0 then
        if player.inventory.currentItem == 0 then
            player.inventory.currentItem = 9
        else
            player.inventory.currentItem = player.inventory.currentItem - 1
        end
    else
        player.inventory.currentItem = player.inventory.currentItem + 1
    end
end

return src.player.wheelmoved
