-- A handful of small, independent plugins.

-- Multiple cursors
-- https://github.com/mg979/vim-visual-multi
vim.pack.add { 'https://github.com/mg979/vim-visual-multi' }

-- Smooth scrolling
-- https://github.com/karb94/neoscroll.nvim
vim.pack.add { 'https://github.com/karb94/neoscroll.nvim' }
require('neoscroll').setup { duration_multiplier = 0.35 }

-- Animated cursor
-- https://github.com/sphamba/smear-cursor.nvim
vim.pack.add { 'https://github.com/sphamba/smear-cursor.nvim' }
require('smear_cursor').setup {
  stiffness = 0.6, -- 0.6      [0, 1]
  stiffness_insert_mode = 0.6, -- 0.5      [0, 1]
  distance_stop_animating = 0.5, -- 0.1      > 0
  trailing_stiffness = 0.5,
  matrix_pixel_threshold = 0.5,
  time_interval = 7,
}

-- Symbol outline window
-- https://github.com/hedyhli/outline.nvim
vim.pack.add { 'https://github.com/hedyhli/outline.nvim' }
require('outline').setup {
  outline_window = {
    position = 'left',
    width = 25,
  },
}
vim.keymap.set('n', '<leader>o', '<cmd>Outline<CR>', { desc = 'Toggle outline' })

-- Better marks
-- https://github.com/chentoast/marks.nvim
vim.pack.add { 'https://github.com/chentoast/marks.nvim' }
require('marks').setup {}

-- Vim motions practice game
-- https://github.com/ThePrimeagen/vim-be-good
vim.pack.add { 'https://github.com/theprimeagen/vim-be-good' }

-- Refactoring operations
-- https://github.com/ThePrimeagen/refactoring.nvim
vim.pack.add {
  'https://github.com/ThePrimeagen/refactoring.nvim',
  'https://github.com/lewis6991/async.nvim',
}
-- this keymap doesn't select any textobject by default, so you may need to provide one each time you use it.
vim.keymap.set({ 'n', 'x' }, '<leader>rs', function() require('refactoring').select_refactor() end, { desc = 'Select refactor' })

-- Edit the filesystem like a buffer
-- https://github.com/stevearc/oil.nvim
vim.pack.add { 'https://github.com/stevearc/oil.nvim' }
require('mini.icons').setup {} -- provided by mini.nvim (already installed in init.lua)
require('oil').setup {}
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory (Oil)' })
