local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, o)
    local hl = {
        TelescopeBorder = { fg = c.gray }
    }

    hl = utils.merge_highlights(hl, o.custom_highlights, c, o)

    utils.apply_hl(hl)
end

return M

