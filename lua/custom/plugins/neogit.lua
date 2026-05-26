-- Neogit: a Magit-like git interface
-- https://github.com/NeogitOrg/neogit
--
-- telescope.nvim is already installed in init.lua; listed again here is harmless
-- (vim.pack.add deduplicates already-installed plugins).

vim.pack.add {
  'https://github.com/NeogitOrg/neogit',
  'https://github.com/nvim-lua/plenary.nvim', -- required
  'https://github.com/sindrets/diffview.nvim', -- optional - Diff integration
  'https://github.com/nvim-telescope/telescope.nvim', -- optional
}

require('neogit').setup {}

vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>', { desc = 'Show Neogit UI' })
