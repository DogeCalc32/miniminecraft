src = {}

src.blocks = {
    draw = require("src/blocks/draw"),
}
src.titleScreen = {
    draw = require("src/titleScreen/draw"),
    mousepressed = require("src/titleScreen/mousepressed"),
}
src.player = {
    draw = require("src/player/draw"),
    update = require("src/player/update"),
    keypressed = require("src/player/keypressed"),
    mousepressed = require("src/player/mousepressed"),
    wheelmoved = require("src/player/wheelmoved"),
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
