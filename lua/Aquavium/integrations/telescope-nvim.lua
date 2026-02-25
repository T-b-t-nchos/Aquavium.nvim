local utils = require("Aquavium.utils")
local M = {}

function M.apply(c)
    local hl = {
        TelescopeBorder = { fg = c.gray }
    }

    utils.apply_hl(hl)
end

return M

