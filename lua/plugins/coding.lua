return {
    -- add cmp-emoji
    {
        "nvim-cmp",
        dependencies = { "hrsh7th/cmp-emoji" },
        opts = function(_, opts)
            table.insert(opts.sources, { name = "emoji" })
            opts.window = {
                completion = {
                    border = {
                        { "󱐋", "WarningMsg" },
                        { "─", "Comment" },
                        { "╮", "Comment" },
                        { "│", "Comment" },
                        { "╯", "Comment" },
                        { "─", "Comment" },
                        { "╰", "Comment" },
                        { "│", "Comment" },
                    },
                    scrollbar = false,
                    winblend = 0,
                },
                documentation = {
                    border = {
                        { "󰙎", "DiagnosticHint" },
                        { "─", "Comment" },
                        { "╮", "Comment" },
                        { "│", "Comment" },
                        { "╯", "Comment" },
                        { "─", "Comment" },
                        { "╰", "Comment" },
                        { "│", "Comment" },
                    },
                    scrollbar = false,
                    winblend = 0,
                },
            }
        end,
    },
}
