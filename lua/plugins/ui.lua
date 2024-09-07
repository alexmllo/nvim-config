return {
    -- messages, cmdline and the popupmenu
    {
        "folke/noice.nvim",
        opts = function(_, opts)
            table.insert(opts.routes, {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true },
            })
            local focused = true
            vim.api.nvim_create_autocmd("FocusGained", {
                callback = function()
                    focused = true
                end,
            })
            vim.api.nvim_create_autocmd("FocusLost", {
                callback = function()
                    focused = false
                end,
            })
            table.insert(opts.routes, 1, {
                filter = {
                    cond = function()
                        return not focused
                    end,
                },
                view = "notify_send",
                opts = { stop = false },
            })

            opts.commands = {
                all = {
                    -- options for the message history that you get with `:Noice`
                    view = "split",
                    opts = { enter = true, format = "details" },
                    filter = {},
                },
            }

            opts.presets.lsp_doc_border = true
        end,
    },
    {
        "j-hui/fidget.nvim",
        opts = {
            notification = {
                window = {
                    winblend = 0,
                    border = "rounded",
                },
            },
        },
    },

    -- filename - catppuccin
    -- {
    --     "b0o/incline.nvim",
    --     event = "BufReadPre",
    --     priority = 1200,
    --     config = function()
    --         require("incline").setup({
    --             highlight = {
    --                 groups = {
    --                     InclineNormal = { guibg = "#303270", guifg = "#a9b1d6" },
    --                     InclineNormalNC = { guibg = "none", guifg = "#a9b1d6" },
    --                 },
    --             },
    --             window = { margin = { vertical = 0, horizontal = 1 } },
    --             hide = { cursorline = true },
    --             render = function(props)
    --                 local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
    --                 if vim.bo[props.buf].modified then
    --                     filename = "[*]" .. filename
    --                 end
    --
    --                 local icon, color = require("nvim-web-devicons").get_icon_color(filename)
    --
    --                 return { { icon, guifg = color }, { " " }, { filename } }
    --             end,
    --         })
    --     end,
    -- },

    -- filename
    {
        "b0o/incline.nvim",
        dependencies = { "craftzdog/solarized-osaka.nvim" },
        event = "BufReadPre",
        priority = 1200,
        config = function()
            local colors = require("solarized-osaka.colors").setup()
            require("incline").setup({
                highlight = {
                    groups = {
                        InclineNormal = { guibg = colors.magenta500, guifg = colors.base04 },
                        InclineNormalNC = { guifg = colors.violet500, guibg = colors.base04 },
                    },
                },
                window = { margin = { vertical = 0, horizontal = 1 } },
                hide = {
                    cursorline = true,
                },
                render = function(props)
                    local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
                    if vim.bo[props.buf].modified then
                        filename = "[+] " .. filename
                    end

                    local icon, color = require("nvim-web-devicons").get_icon_color(filename)
                    return { { icon, guifg = color }, { " " }, { filename } }
                end,
            })
        end,
    },

    -- bufferline
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        keys = {
            { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
            { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
        },
        opts = {
            options = {
                mode = "tabs",
                -- separator_style = "slant",
                show_buffer_close_icons = false,
                show_close_icon = false,
            },
        },
    },

    -- statusline
    -- {
    --     "nvim-lualine/lualine.nvim",
    --     opts = function(_, opts)
    --         local LazyVim = require("lazyvim.util")
    --         opts.sections.lualine_c[4] = {
    --             LazyVim.lualine.pretty_path({
    --                 length = 0,
    --                 relative = "cwd",
    --                 modified_hl = "MatchParen",
    --                 directory_hl = "",
    --                 filename_hl = "Bold",
    --                 modified_sign = "",
    --                 readonly_icon = " 󰌾 ",
    --             }),
    --         }
    --     end,
    -- },

    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = {
            options = {
                theme = "solarized_dark",
            },
        },
    },

    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        opts = {
            theme = "hyper",
            config = {
                week_header = {
                    enable = true,
                },
                shortcut = {
                    { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
                    {
                        icon = " ",
                        icon_hl = "@variable",
                        desc = "Files",
                        group = "Label",
                        action = "Telescope find_files",
                        key = "f",
                    },
                    {
                        desc = " Apps",
                        group = "DiagnosticHint",
                        action = "Telescope app",
                        key = "a",
                    },
                    {
                        desc = " dotfiles",
                        group = "Number",
                        action = "Telescope dotfiles",
                        key = "d",
                    },
                },
            },
        },
    },
}
