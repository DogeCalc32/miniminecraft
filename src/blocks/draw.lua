src.blocks = {}

function src.blocks.draw()
    love.graphics.setColor(1,1,1,1)
    for rowIndex, row in ipairs(world) do
        for columnIndex, column in ipairs(row) do
            if column > 0 then
                love.graphics.setColor(1,1,1)
                local sprite = assets.blocks[column]

                local x = (columnIndex-1) * tileSize
                local y = (rowIndex-1) * tileSize
                local imageWidth, imageHeight = sprite:getDimensions()
                local scaleX =  tileSize / imageWidth
                local scaleY =  tileSize / imageHeight

                love.graphics.draw(sprite,x,y,nil,scaleX,scaleY)
            end
        end
    end
end

return src.blocks.draw