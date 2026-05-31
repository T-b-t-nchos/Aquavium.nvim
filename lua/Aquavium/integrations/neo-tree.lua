local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
    local hl = {
        NeoTreeRootName = { fg = c.cyan, bg = c.bg1, bold = opts.bold },
        NeoTreeGitAdded = { fg = c.cyan, bg = c.bg1, bold = opts.bold },
        NeoTreeGitConflict = { fg = c.rose, bg = c.bg1, bold = opts.bold },
        NeoTreeGitModified = { fg = c.yellow, bg = c.bg1, bold = opts.bold },
        NeoTreeGitUntracked = { fg = c.rose, bg = c.bg1, bold = opts.bold },
        NeoTreeTabInactive = { fg = c.gray, bg = c.bg1 },
        NeoTreeTabSeparatorActive = { fg = c.bg2, bg = c.bg1 },
        NeoTreeTabSeparatorInactive = { fg = c.bg2, bg = c.bg1 },
    }

    hl = utils.merge_highlights(hl, opts.custom_highlights, c, opts)

    utils.apply_hl(hl)
end

return M

