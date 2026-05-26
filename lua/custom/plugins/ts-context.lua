-- Sticky context: show the enclosing function/class at the top of the window
-- https://github.com/nvim-treesitter/nvim-treesitter-context

vim.pack.add { 'https://github.com/nvim-treesitter/nvim-treesitter-context' }
require('treesitter-context').setup {
  max_lines = 10,
  line_numbers = true,
  multiline_threshold = 3,
  on_attach = function(buf)
    local ft = vim.bo[buf].filetype
    return ft == 'typescriptreact' or ft == 'html' or ft == 'tsx'
  end,
}
