-- return {
--     {
--         "craftzdog/solarized-osaka.nvim",
--         lazy = true,
--         priority = 1000,
--         config = function()
--             require("solarized-osaka").setup({
--                 transparent = true,
--             })
--         end,
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
--             colorscheme = "catppuccin-frappe",
--         },
--     },
-- }

-- return {
--     "craftzdog/solarized-osaka.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {},
--     config = function()
--         -- Colorscheme Solarized Osaka by Takuya Matsuyama (https://github.com/craftzdog/solarized-osaka.nvim)
--         require("solarized-osaka").setup({
--             -- your configuration comes here
--             -- or leave it empty to use the default settings
--             transparent = true, -- Enable this to disable setting the background color
--             terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
--             styles = {
--                 -- Style to be applied to different syntax groups
--                 -- Value is any valid attr-list value for `:help nvim_set_hl`
--                 comments = { italic = true },
--                 keywords = { italic = true },
--                 -- Background styles. Can be "dark", "transparent" or "normal"
--                 sidebars = "transparent", -- style for sidebars, see below
--                 floats = "transparent", -- style for floating windows
--             },
--             sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--             day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--             hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--             dim_inactive = true, -- dims inactive windows
--             lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
--         })
--
--         -- setup must be called before loading
--         vim.cmd.colorscheme("solarized-osaka")
--     end,
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
            style = "night",
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
            on_highlights = function(hl, c)
                -- Set transparency for CMP
                hl.CmpPmenu = { bg = "NONE" }
                hl.CmpPmenuSel = { bg = c.bg_highlight, fg = c.fg, bold = true }
            end,
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
