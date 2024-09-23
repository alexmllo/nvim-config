return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-emoji",
        },
        opts = function(_, opts)
            table.insert(opts.sources, { name = "emoji" })
            opts.window = {
                completion = {
                    border = "rounded",
                    winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
                    scrollbar = false,
                    col_offset = -3,
                    side_padding = 1,
                },
                documentation = {
                    border = "rounded",
                    winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None",
                    scrollbar = false,
                },
            }

            opts.performance = {
                debounce = 0,
                throttle = 0,
                fetching_timeout = 20,
                confirm_resolve_timeout = 20,
                async_budget = 1,
                max_view_entries = 50,
            }
        end,
    },

    {
        "akinsho/toggleterm.nvim",
        version = "*",
        opts = {},
        config = function()
            require("toggleterm").setup({
                vim.api.nvim_set_keymap(
                    "t",
                    "<C-t>",
                    "<cmd>exe v:count . 'ToggleTerm'<CR>",
                    { noremap = true, silent = true }
                ),
                vim.api.nvim_set_keymap(
                    "n",
                    "<C-t>",
                    "<cmd>exe v:count . 'ToggleTerm'<CR>",
                    { noremap = true, silent = true }
                ),
                vim.api.nvim_set_keymap(
                    "i",
                    "<C-t>",
                    "<cmd>exe v:count . 'ToggleTerm'<CR>",
                    { noremap = true, silent = true }
                ),
                size = 10,
                open_mapping = [[<C-\>]],
                hide_numbers = true,
                shade_filetypes = {},
                shade_terminals = true,
                shading_factor = 2,
                start_in_insert = true,
                insert_mappings = true,
                persist_size = true,
                close_on_exit = true,
                direction = "float",
                float_opts = {
                    border = "curved",
                    winblend = 0,
                    highlights = {
                        border = "Normal",
                        background = "Normal",
                    },
                },
                title_pos = "center",
            })
        end,
    },
}
