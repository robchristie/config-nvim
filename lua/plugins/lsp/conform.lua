return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "isort", "black" },
      -- run first available...
      javascript = { { "prettierd", "prettier" } },
    },
    formatters = {
      black = {
        prepend_args = { "--preview" },
      },
    },
  },
}
