assets = {
    blocks = {
        love.graphics.newImage("assets/blocks/grass_side.png"),
        love.graphics.newImage("assets/blocks/dirt.png"),
        love.graphics.newImage("assets/blocks/stone.png"),
        nil,
        nil,
        nil,
        nil,
        nil,
        love.graphics.newImage("assets/blocks/bedrock.png"),
    },
    player = {
        blockSelection = love.graphics.newImage("assets/player/block_selection.png")
    },
    hud = {
        inventory = love.graphics.newImage("assets/gui/hud/inventory.png"),
    },
}
return assets
