player = {
    x = 15,
    y = 10,
    hp = 10,
    vy = 0,
    vx = 0,
    selectedBlock = 2,
}

steve = {}
steve.left = love.graphics.newImage("assets/player/steve_left.png")
steve.right = love.graphics.newImage("assets/player/steve_right.png")
playerSprite = love.graphics.newImage("assets/player/steve.png")
playerJump = -250

local scaleX = tileSize
local scaleY = tileSize * 2

function player:getPlayerSaveData()
    return {x = self.x,y = self.y, hp = self.hp,}
end

return player