local utils = require("Aquavium.utils")
local M = {}

function M.apply(c)
    local hl = {
        NotifyERRORBody = { fg = c.rose },
        NotifyERRORBorder = { link = "NotifyERRORBody" },
        NotifyERRORTitle = { link = "NotifyERRORBody" },
        NotifyERRORIcon = { link = "NotifyERRORBody" },

        NotifyWARNBody = { fg = c.yellow },
        NotifyWARNBorder = { link = "NotifyWarnBody" },
        NotifyWARNTitle = { link = "NotifyWarnBody" },
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

    utils.apply_hl(hl)
end

return M

