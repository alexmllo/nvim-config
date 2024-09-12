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
            window = {
                position = "right",
                mappings = {
                    ["Y"] = "none",
                },
            },
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
}
