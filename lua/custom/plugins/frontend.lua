return {
  {
    'NvChad/nvim-colorizer.lua',
    opts = {
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
    },
  },
  {
    'windwp/nvim-ts-autotag',
    event = 'InsertEnter',
    opts = {},
    config = function() require('nvim-ts-autotag').setup() end,
  },
}
