local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, o)
    local hl = {
        LazyReasonRuntime = { fg = c.blue },
        LazyReasonPlugin = { fg = c.lightblue },
        LazyReasonEvent = { fg = c.yellow },
        LazyReasonKeys = { fg = c.rose },
        LazyReasonStart = { fg = c.cyan },
        LazyReasonSource = { fg = c.rose },
        LazyReasonFt = { fg = c.purple },
        LazyReasonCmd = { fg = c.pink },
        LazyReasonImport = { fg = c.yellow },
        LazyReasonRequire = { fg = c.yellow },
        Bold = { bold = o.bold },
        Italic = { italic = o.italic },
    }

    utils.apply_hl(hl)
end

return M


