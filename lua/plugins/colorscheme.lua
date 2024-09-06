-- return {
--     {
--         "LazyVim/LazyVim",
--         opts = {
--             colorscheme = "catppuccin",
--         },
--     },
--     -- modicator (auto color line number based on vim mode)
--     {
--         "mawkler/modicator.nvim",
--         dependencies = "catppuccin",
--         init = function()
--             -- These are required for Modicator to work
--             vim.o.cursorline = false
--             vim.o.number = true
--             vim.o.termguicolors = true
--         end,
--         opts = {},
--     },
-- }

return {
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = true,
        priority = 1000,
        opts = {
            transparent = true,
        },
    },
}
