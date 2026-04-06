local M = {}

function M.apply_hl(hl)
    for group, opts in pairs(hl) do
        if opts == false then
            vim.api.nvim_set_hl(0, group, {})
        else
            vim.api.nvim_set_hl(0, group, opts)
        end
    end
end

function M.merge_highlights(base, custom, colors, opts)
    if not custom then
        return base
    end

    if type(custom) == "function" then
        local user = custom(colors, opts)
        if user then
            return vim.tbl_deep_extend("force", base, user)
        end
        return base
    elseif type(custom) == "table" then
        return vim.tbl_deep_extend("force", base, custom)
    end

    return base
end

return M

