local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
    local hl = {
        CmpNormal = { fg = c.fg, bg = c.bg1 },
        CmpBorder = { fg = c.gray, bg = c.bg1 },
        CmpMenuSel = { fg = vim.api.nvim_get_hl(0, { name = "Special" }).fg, bold = opts.bold },
    }

    hl = utils.merge_highlights(hl, opts.custom_highlights, c, opts)

    utils.apply_hl(hl)
end

return M

