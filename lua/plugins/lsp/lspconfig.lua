return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        enabled = true,
      },
      basedpyright = {
        settings = {
          basedpyright = {
            typeCheckingMode = "standard",
          },
        },
      },
    },
  },
}
