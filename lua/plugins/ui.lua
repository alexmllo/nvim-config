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

    -- {
    --     "j-hui/fidget.nvim",
    --     event = "LspAttach",
    --     opts = {},
    -- },

    {
        "rcarriga/nvim-notify",
        opts = {
            fps = 75,
            stages = "slide",
            render = "wrapped-compact",
            timeout = 2000,
        },
    },

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

    -- Dropbar
    {
        "Bekaboo/dropbar.nvim",
        event = "LazyFile",
        opts = {
            sources = {
                terminal = {
                    name = "",
                },
            },
        },
    },

    -- buferline
    -- {
    --     "akinsho/bufferline.nvim",
    --     opts = {
    --         options = {
    --             modified_icon = "",
    --             color_icons = true,
    --             separator_style = "slope",
    --         },
    --     },
    -- },
    --
    -- buffer line
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

    {
        "OXY2DEV/helpview.nvim",
        ft = "help",
        opts = {},
    },

    {
        "tzachar/highlight-undo.nvim",
        event = "LazyFile",
        vscode = true,
        opts = {
            duration = 700,
        },
    },

    {
        "fei6409/log-highlight.nvim",
        ft = "log",
        opts = {},
    },

    {
        "mvllow/modes.nvim",
        event = "VeryLazy",
        opts = {},
    },

    {
        "folke/twilight.nvim",
        opts = {
            dimming = {
                alpha = 0.25, -- Amount of dimming (0.0 - no dimming, 1.0 - full dimming)
                inactive = true, -- Whether to dim inactive splits/windows
            },
            context = 10, -- Amount of visible lines around the cursor
        },
    },

    {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        opts = {
            plugins = {
                gitsigns = true,
                tmux = true,
            },
        },
        keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
    },

    {
        "nvimdev/dashboard-nvim",
        opts = function(_, opts)
            local logo = [[
                                                                   
      ████ ██████           █████      ██                    
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████
      ]]

            logo = string.rep("\n", 8) .. logo .. "\n\n"
            opts.config.header = vim.split(logo, "\n")
            return opts
        end,
    },
}
