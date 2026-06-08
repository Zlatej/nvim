-- zk: notetaking / Zettelkasten powered by the `zk` CLI
-- https://github.com/zk-org/zk-nvim
--
-- Requires the `zk` binary on PATH and a notebook (a dir with `.zk/`).
-- This config points at ~/notes; override with $ZK_NOTEBOOK_DIR.
-- telescope is already installed in init.lua, so it is not listed here.

vim.pack.add { 'https://github.com/zk-org/zk-nvim' }

require('zk').setup {
  picker = 'telescope',

  lsp = {
    config = {
      name = 'zk',
      cmd = { 'zk', 'lsp' },
      filetypes = { 'markdown' },
    },
    auto_attach = {
      enabled = true,
    },
  },
}

-- Default notebook used when editing a note outside any notebook.
if vim.env.ZK_NOTEBOOK_DIR == nil then vim.env.ZK_NOTEBOOK_DIR = vim.fn.expand '~/notes' end

local map = vim.keymap.set

-- Create a new note after asking for its title.
map('n', '<leader>zn', function() require('zk').new { title = vim.fn.input 'Title: ' } end, { desc = 'Zk [N]ew note' })
-- Create a new note in the same dir as the current buffer, using its content.
map('n', '<leader>zN', "<Cmd>ZkNewFromContentSelection<CR>", { desc = 'Zk new from selection' })
-- Open notes, most recently modified first.
map('n', '<leader>zo', function() require('zk').edit { sort = { 'modified' } } end, { desc = 'Zk [O]pen notes' })
-- Browse tags.
map('n', '<leader>zt', '<Cmd>ZkTags<CR>', { desc = 'Zk [T]ags' })
-- Full-text search across notes.
map('n', '<leader>zf', function() require('zk').edit { sort = { 'modified' }, match = { vim.fn.input 'Search: ' } } end, { desc = 'Zk [F]ind' })
-- Search using the visual selection as the query.
map('v', '<leader>zf', ":'<,'>ZkMatch<CR>", { desc = 'Zk [F]ind selection' })
-- Notes linking to / linked from the current note.
map('n', '<leader>zb', '<Cmd>ZkBacklinks<CR>', { desc = 'Zk [B]acklinks' })
map('n', '<leader>zl', '<Cmd>ZkLinks<CR>', { desc = 'Zk [L]inks' })
-- Insert a link to another note (visual: use selection as the link title).
map('n', '<leader>zi', '<Cmd>ZkInsertLink<CR>', { desc = 'Zk [I]nsert link' })
map('v', '<leader>zi', ":'<,'>ZkInsertLinkAtSelection<CR>", { desc = 'Zk [I]nsert link' })
