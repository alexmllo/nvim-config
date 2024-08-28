return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            ["html"] = { "prettier" },
            ["css"] = { "prettier" },
            ["json"] = { "prettier" },
            ["python"] = { "isort", "black" },
            ["c"] = { "clang-format" },
            ["cpp"] = { "clang-format" },
            ["yaml"] = { "prettier" },
            ["lua"] = { "stylua" },
        },
    },
}
