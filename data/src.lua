src = {}

src.blocks = {
    draw = require("src/blocks/draw"),
}
src.player = {
    draw = require("src/player/draw"),
    update = require("src/player/update"),
    keypressed = require("src/player/keypressed"),
    mousepressed = require("src/player/mousepressed"),
    hud = {
        draw = require("src/player/hud/draw"),
    },
    cursor = {
        draw = require("src/player/cursor/draw")
    }
}
src.entities = {
    draw = require("src/entities/draw"),
}
return src
