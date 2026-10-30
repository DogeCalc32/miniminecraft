player = {
    x = 1,
    y = 1,
    hp = 20,

    inventory = {
        items = {
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0, 0, 0, 0, 0 },
            { 4, 1, 2, 3, 0, 0, 0, 0, 9 }, -- hotbar line
        },
        armor = { 0, 0, 0, 0 },
        offhand = 0,
        currentItem = 1,
    },
}

steve = {}
steve.left = love.graphics.newImage("assets/player/steve_left.png")
steve.right = love.graphics.newImage("assets/player/steve_right.png")

player.sprite = love.graphics.newImage("assets/player/steve.png")

local scaleX = tileSize
local scaleY = tileSize * 2

function player:getPlayerSaveData()
    return { x = self.x, y = self.y, hp = self.hp, inventory = self.inventory }
end

return player
