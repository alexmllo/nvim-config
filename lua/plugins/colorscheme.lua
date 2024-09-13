return {
    {
        "LazyVim/LazyVim",
        opts = { colorscheme = "catppuccin" },
    },
    {
        "rasulomaroff/reactive.nvim",
        optional = true,
        opts = {
            load = { "catppuccin-macchiato-cursor", "catppuccin-macchiato-cursorline" },
        },
    },
}
