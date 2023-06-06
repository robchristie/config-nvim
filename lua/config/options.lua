-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

--opt.winbar = "%=%m %f"
--opt.winbar = "%f"
opt.winbar = " %{%v:lua.vim.fn.expand('%F')%}  %{%v:lua.require'nvim-navic'.get_location()%}"

--vim.g.python3_host_prog = "$HOME/neovim/deps/python/bin/python3.11"
vim.g.python3_host_prog = "/local/users/christir/venv/default/bin/python3"

opt.spelllang = "en_au"
opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true
opt.wrap = true
opt.linebreak = true -- wrap on word boundary
