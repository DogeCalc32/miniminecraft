assets = {
    blocks = {
        love.graphics.newImage("assets/blocks/grass_side.png"),
        love.graphics.newImage("assets/blocks/dirt.png"),
        love.graphics.newImage("assets/blocks/stone.png"),
        love.graphics.newImage("assets/blocks/cobblestone.png"),
        love.graphics.newImage("assets/blocks/brick.png"),
        love.graphics.newImage("assets/blocks/glass.png"),
        love.graphics.newImage("assets/blocks/furnace_front_off.png"),
        love.graphics.newImage("assets/blocks/bed_feet_end.png"),
        love.graphics.newImage("assets/blocks/bedrock.png"),
        love.graphics.newImage("assets/blocks/gravel.png"),
    },
    player = {
        blockSelection = love.graphics.newImage("assets/player/block_selection.png")
    },
    gui = {
        hud = {
            inventory = love.graphics.newImage("assets/gui/hud/inventory.png"),
            hotbar = love.graphics.newImage("assets/gui/hud/hotbar.png"),
        },
    },
    titleScreen = love.graphics.newImage("assets/gui/title/background.png")
}
return assets
