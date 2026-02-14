local utils = require("Aquavium.utils")
local M = {}

function M.apply(c)
    local hl = {
        MarkviewHeading1 = { fg = c.lightblue, bold = true },
        MarkviewHeading2 = { fg = c.yellow, bold = true },
        MarkviewHeading3 = { fg = c.purple, bold = true },
        MarkviewHeading4 = { fg = c.pink, bold = true },
        MarkviewHeading5 = { fg = c.rose },
        MarkviewHeading6 = { fg = c.cyan },

        MarkviewCode = { fg = c.fg, bg = c.bg2 },
        MarkviewInlineCode = { fg = c.fg, bg = c.bg2 },
        MarkviewCodeBlock = { fg = c.fg, bg = c.bg2 },

        MarkviewQuote = { fg = c.gray, italic = true },
        MarkviewSeparator = { fg = c.blue },
        MarkviewLink = { fg = c.lightblue, underline = true },
        MarkviewList = { fg = c.yellow },
        MarkviewCheckbox = { fg = c.lightblue, bold = true },

    }

    utils.apply_hl(hl)
end

return M

