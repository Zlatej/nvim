-- Frontend tooling.

-- Highlight color codes (incl. tailwind classes)
-- https://github.com/NvChad/nvim-colorizer.lua
vim.pack.add { 'https://github.com/NvChad/nvim-colorizer.lua' }
require('colorizer').setup {
  filetypes = {
    'html',
    'css',
    'scss',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'vue',
    'svelte',
  },
  user_default_options = { tailwind = true },
}

-- Auto close and rename HTML/JSX tags
-- https://github.com/windwp/nvim-ts-autotag
vim.pack.add { 'https://github.com/windwp/nvim-ts-autotag' }
require('nvim-ts-autotag').setup {}
