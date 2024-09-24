return {
    {
        "LazyVim/LazyVim",
        opts = { colorscheme = "catppuccin" },
    },
    {
        "rasulomaroff/reactive.nvim",
        optional = true,
        opts = {
            load = { "catppuccin-mocha-cursor", "catppuccin-mocha-cursorline" },
        },
    },

    {
        "catppuccin/nvim",
        opts = {
            integrations = {
                lsp_trouble = true,
                dadbod_ui = true,
                octo = true,
            },
        },
    },
}
