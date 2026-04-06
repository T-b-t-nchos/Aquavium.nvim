local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, o)
    local hl = {
        DashboardHeader = { fg = c.cyan, bold = o.bold },
        DashboardFooter = { fg = c.gray, bold = o.bold },
    }

    hl = utils.merge_highlights(hl, o.custom_highlights, c, o)

    utils.apply_hl(hl)
end

return M

