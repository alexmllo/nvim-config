return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            ["html"] = { "prettier" },
            ["css"] = { "prettier" },
            ["python"] = { "isort", "black" },
            ["c"] = { "clang-format" },
            ["cpp"] = { "clang-format" },
            ["lua"] = { "stylua" },
        },
    },
}
