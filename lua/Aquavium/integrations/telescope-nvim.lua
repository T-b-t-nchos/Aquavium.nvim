local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
    local hl = {
        TelescopeBorder = { link = "FloatBorder" },
    }

    hl = utils.merge_highlights(hl, opts.custom_highlights, c, opts)

    utils.apply_hl(hl)
end

return M

