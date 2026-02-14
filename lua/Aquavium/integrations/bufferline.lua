local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
    local hl = {
        BufferLineFill = { bg = c.bg1 },
        BufferLineBackground = { fg = c.gray, bg = c.bg1 },

        BufferLineSeparator = { bg = c.bg1 },
        BufferLineSeparatorVisible = { bg = c.bg1 },
        BufferLineSeparatorSelected = { bg = c.bg1 },

        BufferLineBufferVisible = { bg = c.bg1 },
        BufferLineCloseButton = { bg = c.bg1 },
        BufferLineCloseButtonVisible = { bg = c.bg1 },

        BufferLineIndicatorSelected = { fg = c.cyan, bg = c.bg1, bold = opts.bold },
        BufferLineBufferSelected = { fg = c.fg, bg = c.bg1 },
    }

    utils.apply_hl(hl)
end

return M

