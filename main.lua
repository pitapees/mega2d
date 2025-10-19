local utils = require("utils")

local buttons

function love.load()
    buttons = utils.buttons.createButtons(12)
    utils.layouts.gridLayout(buttons, 5, 5, 100, 50, 10)
end

function love.update(dt)
    print("Hello, LÖVE!")
end

function love.draw()
    for _, b in ipairs(buttons) do
        love.graphics.rectangle("line", b.x, b.y, b.w, b.h)
        love.graphics.printf(b.label, b.x, b.y + 10, b.w, "center")
    end
end
