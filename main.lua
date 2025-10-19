function love.load()
    buttons = {}
    local rows, cols = 5, 5
    local buttonW, buttonH = 100, 40
    local spacing = 10
    for i = 0, rows - 1 do
        for j = 0, cols - 1 do
            table.insert(buttons, {
                x = j * (buttonW + spacing),
                y = i * (buttonH + spacing),
                w = buttonW,
                h = buttonH,
                label = "Btn " .. (i * cols + j + 1)
            })
        end
    end
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
