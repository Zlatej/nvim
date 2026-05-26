-- Go development tools
-- https://github.com/ray-x/go.nvim
--
-- nvim-lspconfig is already installed in init.lua, so it is not listed here.
-- Binaries can be installed/updated with `:lua require('go.install').update_all_sync()`.

vim.pack.add {
  'https://github.com/ray-x/go.nvim',
  'https://github.com/ray-x/guihua.lua',
  'https://github.com/theHamsta/nvim-dap-virtual-text',
}

require('go').setup {}
