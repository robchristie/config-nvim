return {
  "neovim/nvim-lspconfig",
  opts = { format = { timeoust_ms = 2000 } },
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- change a keymap
    keys[#keys + 1] = {
      "<leader>cf",
      "<cmd>lua vim.lsp.buf.format()<cr>",
      desc = "Format"
    }
  end,
}
