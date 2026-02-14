local aqua = require("Aquavium")

local colors = aqua.colors or {}
local opts = aqua.options or {}

local function bg(v)
    if opts.transparent then
        return nil
    end
    return v
end

return {
    normal = {
        a = { fg = colors.bg2, bg = colors.lightblue, gui = opts.bold and "bold" or nil },
        b = { fg = colors.fg, bg = bg(colors.bg2) },
        c = { fg = colors.fg, bg = bg(colors.bg1) },
    },

    insert = {
        a = { fg = colors.bg2, bg = colors.purple, gui = opts.bold and "bold" or nil },
    },

    visual = {
        a = { fg = colors.bg2, bg = colors.yellow, gui = opts.bold and "bold" or nil },
    },

    replace = {
        a = { fg = colors.bg2, bg = colors.pink, gui = opts.bold and "bold" or nil },
    },

    inactive = {
        a = { fg = colors.gray, bg = bg(colors.bg2) },
        b = { fg = colors.gray, bg = bg(colors.bg2) },
        c = { fg = colors.gray, bg = bg(colors.bg2) },
    }
}

