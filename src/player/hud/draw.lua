src.player.hud = {}

function src.player.hud.draw()
    local guiScale = .15
    love.graphics.setColor(0, .6, 0)
    love.graphics.print(love.timer.getFPS(), 10, 10)
    love.graphics.setColor(1, 1, 1)
    local sprite = assets.gui.hud.hotbar
    local spriteWidth, spriteHeight = sprite:getDimensions()
    local scaleX = spriteWidth * (guiScale / 9)
    local scaleY = spriteHeight * guiScale
    local sizeX = spriteWidth * scaleX
    local sizeY = spriteHeight * scaleY

    local x = w / 2 - sizeX / 2
    local y = h - sizeY - 20

    love.graphics.draw(sprite, x, y, nil, scaleX, scaleY, nil)
    local item = assets.blocks[player.inventory.items[4][player.inventory.currentItem]]
    if item == nil then
        return
    end

    love.graphics.draw(item, w / 2 - spriteWidth / 2, h - spriteHeight - 60, nil, scaleX, scaleY, ox, oy)
end

return src.player.hud.draw
