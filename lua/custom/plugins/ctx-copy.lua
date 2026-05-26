-- ctx-copy: copy buffer context with configured path prefixes stripped
-- https://github.com/zlatej/ctx-copy.nvim

vim.pack.add { 'https://github.com/zlatej/ctx-copy.nvim' }
require('ctx-copy').setup {
  prefixes = {
    vim.fn.expand '~',
    'repos/',
    'tmp',
  },
}
