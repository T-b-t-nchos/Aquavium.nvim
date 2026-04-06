local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
    local hl = {
        TreesitterContext = { bg = c.bg1 },
        TreesitterContextLineNumber = { fg = c.gray, bg = c.bg1 },
        TreesitterContextBottom = { sp = c.lightblue, underline = true },
        TreesitterContextSeparator = { fg = c.blue, bg = c.bg1 },
    }

    hl = utils.merge_highlights(hl, opts.custom_highlights, c, opts)

    utils.apply_hl(hl)
end

return M

