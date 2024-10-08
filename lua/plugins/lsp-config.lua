return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    dependencies = {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      require("mason").setup({})

      local ensure_installed = {
        "prettier",
        "stylua",
        "ruff",
        "clangd",
        "neocmakelsp",
        "rust-analyzer",
        "rust-analyzer",
        "lua-language-server",
        "bash-language-server",
        "yaml-language-server",
        "taplo", -- toml
        -- PIP doesn't work?
        --"python-language-server",
        --"black",
        --"isort",
        --"basedpyright",
      }
      require("mason-tool-installer").setup({
        ensure_installed = ensure_installed,
        auto_update = false,
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = false,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP specification.
      --  When you add nvim-cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with nvim cmp, and then broadcast that to the servers.
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.taplo.setup({
        capabilities = capabilities,
      })
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })
      lspconfig.pylsp.setup({
        capabilities = capabilities,
        mason = false,
        settings = {
          pylsp = {
            plugins = {
              --black = {
              --  enabled = true,
              --  preview = true,
              --},
              mccabe = {
                enabled = false,
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
      })
      -- lspconfig.ruff.setup({
      --   capabilities = capabilities,
      --   init_options = {
      --     settings = {
      --       organizeImports = true,
      --     },
      --   },
      -- })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
    end,
  },
}
