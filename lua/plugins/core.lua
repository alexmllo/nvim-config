-- Overriding default plugin options
return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-mocha",
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                        ".git",
                        ".DS_Store",
                        "thumbs.db",
                        ".neoconf.json",
                    },
                    never_show = {},
                },
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            -- disable the keymap to grep files
            { "<leader>/", false },
        },
    },
}
