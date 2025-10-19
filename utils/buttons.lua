local buttons = {}

function buttons.createButtons(count)
    local buttons = {}
    for i = 1, count do
        table.insert(buttons, {
            -- only initialize as empty or default
            x = 0,
            y = 0,
            w = 0,
            h = 0,
            label = "Btn " .. i
        })
    end
    return buttons
end

return buttons
