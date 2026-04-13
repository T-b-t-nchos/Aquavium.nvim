-- Import utility functions for highlight management
local utils = require("Aquavium.utils")
local M = {}

--- Apply the theme highlights
---@param c table the color palette
---@param opts table configuration options (italics, bold, etc.)
function M.apply(c, opts)
    -- Define the highlight groups
    local hl = {
        -- Editor basic UI
        Normal = { fg = c.fg, bg = c.bg1 },
        NormalFloat = { fg = c.fg },
        EndOfBuffer = { fg = c.blue },
        LineNr = { fg = c.gray },
        MatchParen = { bold = opts.bold },
        ModeMsg = { fg = c.purple },
        Directory = { fg = c.lightblue },

        -- Standard syntax highlighting
        Comment = { fg = c.gray, italic = opts.italic },
        Keyword = { fg = c.yellow },
        Statement = { fg = c.orange },
        Operator = { fg = c.sky },
        String = { fg = c.lightblue },
        Character = { fg = c.purple },
        Number = { fg = c.pink },
        Float = { link = "Number" },
        Boolean = { fg = c.rose },
        Function = { fg = c.cyan },

        -- Statusline, Tabline and Winbar
        WinBar = { bg = c.bg1 },
        WinBarNC = { bg = c.bg1 },
        TabLine = { bg = c.bg1 },
        TabLineFill = { bg = c.bg1 },
        TabLineSel = { bg = c.bg1 },
        StatusLine = { fg = c.fg },
        StatusLineNC = { bg = c.bg1 },

        -- LSP Diagnostics
        DiagnosticVirtualTextError = { fg = c.rose },
        DiagnosticVirtualTextWarn = { fg = c.yellow },
        DiagnosticVirtualTextInfo = { fg = c.cyan },

        -- Legacy Vim script syntax
        vimCommand = { fg = c.yellow },
        vimBang = { fg = c.lightblue },
        vimOper = { fg = c.purple },
        vimUsrCmd = { fg = c.cyan },

        -- Tree-sitter specific highlights
        ['@operator'] = { fg = c.sky },
        ['@keyword.conditional'] = { fg = c.orange },
        ['@keyword.repeat'] = { fg = c.orange },
        ['@keyword.return'] = { fg = c.orange },
        ['@keyword.exception'] = { fg = c.orange },
        ['@keyword.coroutine'] = { fg = c.orange },
    }

    -- Merge with user-defined custom highlights
    hl = utils.merge_highlights(hl, opts.custom_highlights, c, opts)

    -- Apply all highlights to the system
    utils.apply_hl(hl)
end

return M
