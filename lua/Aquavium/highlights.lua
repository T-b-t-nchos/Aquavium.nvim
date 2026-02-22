local utils = require("Aquavium.utils")
local M = {}

function M.apply(c, opts)
    local hl = {
        Normal = { fg = c.fg, bg = c.bg1 },
        Comment = { fg = c.gray, bg = c.bg1, italic = opts.italic },
        Keyword = { fg = c.yellow, bg = c.bg1 },
        String = { fg = c.lightblue, bg = c.bg1 },
        Character = { fg = c.purple, bg = c.bg1 },
        Number = { fg = c.pink, bg = c.bg1 },
        Float = { link = "Number" },
        Boolean = { fg = c.rose, bg = c.bg1 },
        LineNr = { fg = c.gray, bg = c.bg1 },
        Function = { fg = c.cyan, bg = c.bg1 },
        EndOfBuffer = { fg = c.blue, bg = c.bg1 },
        MatchParen = { fg = c.cyan, bg = c.bg1, bold = opts.bold },

        NormalFloat = { fg = c.fg, bg = c.bg1 },

        WinBar   = { bg = c.bg1 },
        WinBarNC = { bg = c.bg1 },
        TabLine = { bg = c.bg1 },
        TabLineFill = { bg = c.bg1 },
        TabLineSel = { bg = c.bg1 },
        StatusLine = { fg = c.fg, bg = c.bg1 },
        StatusLineNC = { bg = c.bg1 },

        ModeMsg = { fg = c.purple, bg = c.bg1 },

        Directory = { fg = c.lightblue, bg = c.bg1 },

        -- lazy.nvim --
        LazyReasonRuntime = { fg = c.blue, bg = c.bg1 },
        LazyReasonPlugin = { fg = c.lightblue, bg = c.bg1 },
        LazyReasonEvent = { fg = c.yellow, bg = c.bg1 },
        LazyReasonKeys = { fg = c.rose, bg = c.bg1 },
        LazyReasonStart = { fg = c.cyan, bg = c.bg1 },
        LazyReasonSource = { fg = c.rose, bg = c.bg1 },
        LazyReasonFt = { fg = c.purple, bg = c.bg1 },
        LazyReasonCmd = { fg = c.pink, bg = c.bg1 },
        LazyReasonImport = { fg = c.yellow, bg = c.bg1 },
        LazyReasonRequire = { fg = c.yellow, bg = c.bg1 },
        Bold = { bold = opts.bold },
        Italic = { italic = opts.italic },

        -- treesitter.nvim --
        ['@operator'] = { fg = c.sky },

        ['@keyword.conditional'] = {fg = c.orange},
        ['@keyword.repeat'] = {fg = c.orange},
        ['@keyword.return'] = {fg = c.orange},
        ['@keyword.exception'] = {fg = c.orange},
        ['@keyword.coroutine'] = {fg = c.orange},


        -- Telescope.nvim --
        TelescopeBorder = { fg = c.gray }

    }

    utils.apply_hl(hl)
end

return M

