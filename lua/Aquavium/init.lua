local M = {}

local default_options = {
    bold = true,
    italic = true,
    transparent = true
}

M.options = vim.deepcopy(default_options)


local function apply_integrations()
    local ok, integrations = pcall(require, "Aquavium.integrations")
    if not ok then return end

    vim.schedule(function()
        integrations.apply(M.colors, M.meta)
    end)
end


local function apply_lualine()
    if not package.loaded["lualine"] then
        return
    end

    vim.schedule(function()
        local ok, lualine = pcall(require, "lualine")
        if not ok then return end

        local config = lualine.get_config() or {}
        config.options = config.options or {}
        config.options.theme = "Aquavium"

        package.loaded["lualine.themes.Aquavium"] = nil

        lualine.setup(config)
        lualine.refresh()
    end)
end



function M.setup(user_options)
    if user_options then
        M.options = vim.tbl_deep_extend("force", M.options, user_options)
    end

    local colors = {
        bg1 =       "#000e1e",
        bg2 =       "#000e1e",
        fg =        "#cdd5e5",
        red =       "#cc0047",
        green =     "#73bf5e", --(seaweed)
        blue =      "#004584", --Daidaisan
        lightblue = "#4fbee3", --Suzu
        cyan =      "#63deff", --Yadokari
        yellow =    "#e8dfad", --Retro
        purple =    "#9f97f5", --Ruru
        pink =      "#eeb6c7", --Kitty
        rose =      "#da9197", --Chris
        gray =      "#5e6a82"
    }

    local options = M.options

    if options.transparent then
        colors.bg1 = "NONE"
    end

    M.colors = colors
    M.meta = M.options

    vim.api.nvim_create_autocmd({ "ModeChanged", "VimEnter" }, {
        callback = function()
            local m = vim.api.nvim_get_mode().mode
            local c = M.colors

            vim.api.nvim_set_hl(0, "ModeMsg", {
                fg = ({ n=c.lightblue, i=c.purple, v=c.yellow, V=c.yellow, R=c.pink, c=c.lightblue, t=c.purple })[m],
                bg = c.bg1,
                bold = true
            })
        end
    })

    local highlights = {
        Normal = { fg = colors.fg, bg = colors.bg1 },
        Comment = { fg = colors.gray, bg = colors.bg1, italic = options.italic },
        Keyword = { fg = colors.yellow, bg = colors.bg1 },
        String = { fg = colors.lightblue, bg = colors.bg1 },
        Number = { fg = colors.pink, bg = colors.bg1 },
        Boolean = { fg = colors.rose, bg = colors.bg1 },
        LineNr = { fg = colors.gray, bg = colors.bg1 },
        Function = { fg = colors.cyan, bg = colors.bg1 },
        EndOfBuffer = { fg = colors.blue, bg = colors.bg1 },
        MatchParen = { fg = colors.cyan, bg = colors.bg1, bold = options.bold },

        NormalFloat = { fg = colors.fg, bg = colors.bg1 },

        WinBar   = { bg = colors.bg1 },
        WinBarNC = { bg = colors.bg1 },
        TabLine = { bg = colors.bg1 },
        TabLineFill = { bg = colors.bg1 },
        TabLineSel = { bg = colors.bg1 },
        StatusLine = { fg = colors.fg, bg = colors.bg1 },
        StatusLineNC = { bg = colors.bg1 },

        ModeMsg = { fg = colors.purple, bg = colors.bg1 },

        Directory = { fg = colors.lightblue, bg = colors.bg1 },

        -- treesitter.nvim --
        ['@operator'] = { fg = colors.purple },

        -- Telescope.nvim --
        TelescopeBorder = { fg = colors.gray }
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    vim.g.colors_name = "Aquavium"


    apply_integrations()

    apply_lualine()
end

return M
