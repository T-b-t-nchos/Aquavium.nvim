local M = {}

local modules = {
    "bufferline",
    "dashboard",
    "markview",
    "treesitter_context",
}

function M.apply(colors, opts)
    for _, name in ipairs(modules) do
        local ok, mod = pcall(require, "Aquavium.integrations." .. name)
        if ok and mod.apply then
            mod.apply(colors, opts)
        end
    end
end

return M

