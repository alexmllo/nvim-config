local cmp = require("cmp")

return {
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

        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline({
                ["<C-j>"] = {
                    c = function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        else
                            fallback()
                        end
                    end,
                },
                ["<C-k>"] = {
                    c = function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        else
                            fallback()
                        end
                    end,
                },
            }),
            sources = {
                { name = "buffer" },
            },
        })
    end,
}
