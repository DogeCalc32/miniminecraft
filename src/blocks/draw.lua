src.blocks = {}

-- function src.blocks.draw()
--     love.graphics.setColor(1, 1, 1, 1)
--     for rowIndex, row in ipairs(world) do
--         for columnIndex, column in ipairs(row) do
--             if column > 0 then
--                 local sprite = assets.blocks[column]

--                 local x = (columnIndex) * tileSize
--                 local y = (rowIndex) * tileSize
--                 local imageWidth, imageHeight = sprite:getDimensions()
--                 local scaleX = tileSize / imageWidth
--                 local scaleY = tileSize / imageHeight

--                 love.graphics.draw(sprite, x, y, nil, scaleX, scaleY)
--             end
--         end
--     end
-- end

function src.blocks.draw(size)
    love.graphics.setColor(1, 1, 1, 1)
    for rowIndex, row in ipairs(world) do
        for blockIndex = 1, #row, 1 do
            block = row[blockIndex]
            if block == nil then
            else
                local sprite = block.sprite

                local x = block.x * size
                local y = block.y * size
                local imageWidth, imageHeight = sprite:getDimensions()
                local scaleX = size / imageWidth
                local scaleY = size / imageHeight

                love.graphics.draw(sprite, x, y, nil, scaleX, scaleY)
            end
        end
    end
end

return src.blocks.draw
