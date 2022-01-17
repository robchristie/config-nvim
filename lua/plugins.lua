-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- NeoVim dark colorscheme inspired by the colors of the famous painting
  -- by Katsushika Hokusai
  use "rebelot/kanagawa.nvim"

  -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/popup.nvim"

  -- Useful lua functions used ny lots of plugins
  use "nvim-lua/plenary.nvim"

  use "akinsho/toggleterm.nvim"

  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "lukas-reineke/indent-blankline.nvim"
  use "folke/which-key.nvim"
  use "folke/todo-comments.nvim"

    -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "folke/trouble.nvim"
  -- use "m-pilia/vim-ccls" -- additional methods from ccls

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-media-files.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- StatusLine
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "rlch/github-notifications.nvim",
                 "SmiteshP/nvim-gps"},
    event = "VimEnter",
    config = [[require('plugins.lualine')]],
    wants = "nvim-web-devicons",
  })

  use({
    "gelguy/wilder.nvim",
    opt = true,
  }) -- better wild menu
  use({
    "rcarriga/nvim-notify",
    opt = true,
  }) -- notication pop up

end)
