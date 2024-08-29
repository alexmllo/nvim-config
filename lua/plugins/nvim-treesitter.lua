return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "go",
                "java",
                "cpp",
                "css",
                "dockerfile",
                "rust",
                "sql",
            })
        end,
    },
}
