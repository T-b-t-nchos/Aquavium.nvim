--local utils = require("Aquavium.utils")
local highlight = require("Aquavium.highlights")
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

    local options = M.options

    M.colors = require("Aquavium.colors").setup(options).colors;

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

    highlight.apply(M.colors, options)

    vim.g.colors_name = "Aquavium"


    apply_integrations()

    apply_lualine()
end

return M
