-- return {
--     {
--         "craftzdog/solarized-osaka.nvim",
--         lazy = true,
--         priority = 1000,
--         opts = {
--             transparent = true,
--         },
--     },
-- }

-- return {
--     {
--         "catppuccin/nvim",
--         opts = {
--             transparent_background = true,
--         },
--     },
--
--     {
--         "LazyVim/LazyVim",
--         opts = {
--             colorscheme = "catppuccin-macchiato",
--         },
--     },
-- }

-- return {
--     "maxmx03/solarized.nvim",
--     lazy = false,
--     priority = 1000,
--     ---@type solarized.config
--     opts = {
--         transparent = {
--             enabled = true,
--         },
--     },
--     config = function(_, opts)
--         vim.o.termguicolors = true
--         vim.o.background = "dark"
--         require("solarized").setup(opts)
--         vim.cmd.colorscheme("solarized")
--     end,
-- }

return {
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "moon",
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
            dim_inactive = true,
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
        },
    },
}

-- return {
--     {
--         "Tsuzat/NeoSolarized.nvim",
--         lazy = false, -- make sure we load this during startup if it is your main colorscheme
--         priority = 1000, -- make sure to load this before all the other start plugins
--         config = function()
--             vim.cmd([[ colorscheme NeoSolarized ]])
--         end,
--     },
-- }
