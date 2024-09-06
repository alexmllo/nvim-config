return {
    {
        "aserowy/tmux.nvim",
        config = function()
            return require("tmux").setup({
                copy_sync = {
                    sync_clipboard = false,
                },
                resize = {
                    enable_default_keybindings = false,
                },
            })
        end,
    },
}
