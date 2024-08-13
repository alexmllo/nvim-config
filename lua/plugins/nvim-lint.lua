return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      javascript = { "eslind_d" },
      python = { "pylint" },
      golang = { "golangci-lint" },
      java = { "checkstyle" },
      c = { "cpplint" },
    },
  },
}
