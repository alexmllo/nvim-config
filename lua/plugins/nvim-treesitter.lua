return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "cpp",
                "css",
                "rust",
            })
        end,
    },
}
