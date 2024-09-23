return {
    {
        "folke/flash.nvim",
        enabled = false,
    },
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            -- disable the keymap to grep files
            { "<leader>/", false },
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            -- window = {
            --     position = "right",
            -- },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_by_name = {
                        ".git",
                        ".DS_Store",
                    },
                    always_show = {
                        ".env",
                    },
                },
            },
        },
    },
    {
        "nacro90/numb.nvim",
        event = "CmdlineEnter",
        opts = {},
    },

    {
        "stevearc/aerial.nvim",
        opts = {
            layout = {
                max_width = { 40, 0.2 },
                width = nil,
                min_width = 20,
            },
        },
    },
}
