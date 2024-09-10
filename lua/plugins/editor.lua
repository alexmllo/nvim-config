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
        "aurum77/live-server.nvim",
        build = function()
            require("live_server.util").install()
        end,
        cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
        keys = {
            { "<leader>cV", ft = "html", "<cmd>LiveServer<CR>", desc = "Live Server" },
        },
    },
    {
        "nacro90/numb.nvim",
        event = "CmdlineEnter",
        opts = {},
    },
}
