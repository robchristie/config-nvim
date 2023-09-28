return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pylsp = {
        -- disable Mason to use compatible version of pylsp
        mason = false,
        settings = {
          pylsp = {
            plugins = {
              black = {
                enabled = true,
                preview = true,
              },
              mypy = {
                enabled = true,
              },
              ruff = {
                enabled = true,
                extendSelect = { "I" },
              },
              pycodestyle = {
                ignore = { "E203" },
                maxLineLength = 88,
              },
            },
          },
        },
      },
    },
  },
}
