local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
    local hl = {
        Normal = { fg = c.fg, bg = c.bg1 },
        Comment = { fg = c.gray, italic = opts.italic },
        Keyword = { fg = c.yellow },
        String = { fg = c.lightblue },
        Character = { fg = c.purple },
        Number = { fg = c.pink },
        Float = { link = "Number" },
        Boolean = { fg = c.rose },
        LineNr = { fg = c.gray },
        Function = { fg = c.cyan },
        EndOfBuffer = { fg = c.blue },
        MatchParen = { fg = c.cyan, bold = opts.bold },

        NormalFloat = { fg = c.fg },

        WinBar   = { bg = c.bg1 },
        WinBarNC = { bg = c.bg1 },
        TabLine = { bg = c.bg1 },
        TabLineFill = { bg = c.bg1 },
        TabLineSel = { bg = c.bg1 },
        StatusLine = { fg = c.fg },
        StatusLineNC = { bg = c.bg1 },

        ModeMsg = { fg = c.purple },

        Directory = { fg = c.lightblue },

        DiagnosticVirtualTextError = { fg = c.rose },
        DiagnosticVirtualTextWarn = { fg = c.yellow },
        DiagnosticVirtualTextInfo = { fg = c.cyan },

        -- treesitter.nvim --
        ['@operator'] = { fg = c.sky },

        ['@keyword.conditional'] = {fg = c.orange},
        ['@keyword.repeat'] = {fg = c.orange},
        ['@keyword.return'] = {fg = c.orange},
        ['@keyword.exception'] = {fg = c.orange},
        ['@keyword.coroutine'] = {fg = c.orange},
    }

    utils.apply_hl(hl)
end

return M

