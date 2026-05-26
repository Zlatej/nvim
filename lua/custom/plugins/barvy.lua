-- Colorscheme
-- https://github.com/vague2k/vague.nvim

vim.pack.add { 'https://github.com/vague2k/vague.nvim' }
require('vague').setup {}
vim.cmd.colorscheme 'vague'

-- Other themes I've tried, kept for reference:
--
-- vim.pack.add { 'https://github.com/binbandit/achroma.nvim' }
-- vim.cmd.colorscheme 'achroma'
--
-- vim.pack.add { 'https://github.com/kdheepak/monochrome.nvim' }
-- vim.cmd.colorscheme 'monochrome'
--
-- zenbones needs lush.nvim (or set vim.g.zenbones_compat = 1 to skip it)
-- vim.pack.add {
--   'https://github.com/zenbones-theme/zenbones.nvim',
--   'https://github.com/rktjmp/lush.nvim',
-- }
-- vim.cmd.colorscheme 'zenbones'
