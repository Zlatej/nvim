-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  -- cursor stuff
  { 'mg979/vim-visual-multi' },
  { 'karb94/neoscroll.nvim', opts = { duration_multiplier = 0.35 } },
  {
    'sphamba/smear-cursor.nvim',
    opts = {
      stiffness = 0.6, -- 0.6      [0, 1]
      -- trailing_stiffness = 0.6, -- 0.45     [0, 1]
      stiffness_insert_mode = 0.6, -- 0.5      [0, 1]
      -- trailing_stiffness_insert_mode = 0.6, -- 0.5      [0, 1]
      -- damping = 0.95, -- 0.85     [0, 1]
      -- damping_insert_mode = 0.95, -- 0.9      [0, 1]
      distance_stop_animating = 0.5, -- 0.1      > 0
      trailing_stiffness = 0.5,
      matrix_pixel_threshold = 0.5,
      time_interval = 7,
    },
  },
  {
    'hedyhli/outline.nvim',
    lazy = true,
    cmd = { 'Outline', 'OutlineOpen' },
    keys = { -- Example mapping to toggle outline
      { '<leader>o', '<cmd>Outline<CR>', desc = 'Toggle outline' },
    },
    opts = {
      outline_window = {
        position = 'left',
        width = 25,
      },
    },
  },
  {
    'chentoast/marks.nvim',
    event = 'VeryLazy',
    opts = {},
  },
  { 'theprimeagen/vim-be-good' },
  {
    'ThePrimeagen/refactoring.nvim',
    dependencies = {
      'lewis6991/async.nvim',
    },
    lazy = false,
    init = function()
      vim.keymap.set({ 'n', 'x' }, '<leader>rs', function()
        -- this keymap doesn't select any textobject by default, so you may need to provide one each time you use it.
        require('refactoring').select_refactor()
      end, { desc = 'Select refactor' })
    end,
  }
}
