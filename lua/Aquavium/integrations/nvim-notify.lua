local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, o)
    local hl = {
        NotifyERRORBody = { fg = c.rose },
        NotifyERRORBorder = { link = "NotifyERRORBody" },
        NotifyERRORTitle = { link = "NotifyERRORBody" },
        NotifyERRORIcon = { link = "NotifyERRORBody" },

        NotifyWARNBody = { fg = c.yellow },
        NotifyWARNBorder = { link = "NotifyWARNBody" },
        NotifyWARNTitle = { link = "NotifyWARNBody" },
        NotifyWARNIcon = { link = "NotifyWARNBody" },

        NotifyINFOBody = { fg = c.lightblue },
        NotifyINFOBorder = { link = "NotifyINFOBody" },
        NotifyINFOTitle = { link = "NotifyINFOBody" },
        NotifyINFOIcon = { link = "NotifyINFOBody" },

        NotifyDEBUGBody = { fg = c.pink },
        NotifyDEBUGBorder = { link = "NotifyDEBUGBody" },
        NotifyDEBUGTitle = { link = "NotifyDEBUGBody" },
        NotifyDEBUGIcon = { link = "NotifyDEBUGBody" },

        NotifyTRACEBody = { fg = c.pink },
        NotifyTRACEBorder = { link = "NotifyTRACEBody" },
        NotifyTRACETitle = { link = "NotifyTRACEBody" },
        NotifyTRACEIcon = { link = "NotifyTRACEBody" },
    }

    hl = utils.merge_highlights(hl, o.custom_highlights, c, o)

    utils.apply_hl(hl)
end

return M

