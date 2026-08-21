draw = {}

function love.draw()
    if isGameState then
        love.graphics.setColor(.53, .75, .99)
        love.graphics.rectangle("fill", 0, 0, w, h)

        cam:attach() -- camera start
        src.blocks.draw()
        src.player.draw()
        src.player.cursor.draw()
        cam:detach() -- camera end

        src.player.hud.draw()
    elseif isGameState == false then

    end
end

return draw
