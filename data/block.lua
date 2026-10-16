local Block = {}
Block.__index = Block

function Block:new(type, x, y)
    local instance = setmetatable({}, self)
    instance.x = x
    instance.y = y
    instance.type = type
    instance.sprite = assets.blocks[type]
    return instance
end

return Block
