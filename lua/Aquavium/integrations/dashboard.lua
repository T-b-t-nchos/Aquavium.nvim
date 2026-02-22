local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
    local hl = {
        DashboardHeader = { fg = c.cyan, bold = opts.bold },
        DashboardFooter = { fg = c.gray, bold = opts.bold },
    }

    utils.apply_hl(hl)
end

return M

