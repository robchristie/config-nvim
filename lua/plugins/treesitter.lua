return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        'bash',
        'c',
        'cpp',
        'css',
        'cmake',
        'cuda',
        'diff',
        'dockerfile',
        "fortran",
        "gitcommit",
        "gitignore",
        "graphql",
        "go",
        "html",
        "javascript",
        "json",
        "latex",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "ninja",
        "perl",
        "php",
        "python",
        "query",
        "r",
        "regex",
        "rust",
        "scheme",
        "sql",
        "svelte",
        "commonlisp",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      }
    },
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
