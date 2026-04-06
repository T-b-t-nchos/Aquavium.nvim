local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
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
        Bold = { bold = opts.bold },
        Italic = { italic = opts.italic },
    }

    hl = utils.merge_highlights(hl, opts.custom_highlights, c, opts)

    utils.apply_hl(hl)
end

return M


