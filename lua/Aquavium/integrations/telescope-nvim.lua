local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
    local hl = {
        TelescopeBorder = { fg = c.gray }
    }

    hl = utils.merge_highlights(hl, opts.custom_highlights, c, o)

    utils.apply_hl(hl)
end

return M

