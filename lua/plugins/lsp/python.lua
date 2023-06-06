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
