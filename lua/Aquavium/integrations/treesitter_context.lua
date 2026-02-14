local utils = require("Aquavium.utils")
local M = {}

function M.apply(c)
    local hl = {
        TreesitterContext = { bg = c.bg1 },
        TreesitterContextLineNumber = { fg = c.gray, bg = c.bg1 },
        TreesitterContextBottom = { sp = c.lightblue, underline = true },
        TreesitterContextSeparator = { fg = c.blue, bg = c.bg1 },
    }

    utils.apply_hl(hl)
end

return M

