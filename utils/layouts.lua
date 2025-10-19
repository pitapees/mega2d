local layouts = {}


function layouts.gridLayout(buttons, rows, cols, buttonW, buttonH, spacing)
    for i = 0, rows - 1 do
        for j = 0, cols - 1 do
            local index = i * cols + j + 1
            local btn = buttons[index]
            if btn then
                btn.x = j * (buttonW + spacing)
                btn.y = i * (buttonH + spacing)
                btn.w = buttonW
                btn.h = buttonH
            end
        end
    end
end

return layouts
