local palette = {
    bg1 =       "#000e1e",
    bg2 =       "#000e1e",
    fg =        "#cdd5e5",
    red =       "#cc0047",
    green =     "#73bf5e", --(seaweed)
    blue =      "#004584", --Daidaisan
    lightblue = "#4fbee3", --Suzu
    cyan =      "#63deff", --Deep sea stone (Shinkaino-ishi)
    sky =       "#699ee0", --Holo       --Shinitagari-no-Idol
    orange =    "#fdba8a", --Hikaru     --Shinitagari-no-Idol
    yellow =    "#e8dfad", --Retro
    purple =    "#938af8", --Ruru
    pink =      "#eeb6c7", --Kitty
    rose =      "#da9197", --Chris
    gray =      "#7b92ae", --Yadokari
}

local M = {}

function M.setup(opts)
    local c = vim.deepcopy(palette)

    if opts.transparent then
        c.bg1 = "NONE"
    end

    return {
        colors = c
    }
end

return M
