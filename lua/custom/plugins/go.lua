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

-- Go buffer-local keymaps.
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'go',
  callback = function(ev)
    local map = function(lhs, rhs, desc)
      vim.keymap.set('n', lhs, rhs, { buffer = ev.buf, desc = desc })
    end
    -- Code generation
    map('<leader>ci', '<cmd>GoImpl<cr>', 'Go: implement interface')
    map('<leader>fs', '<cmd>GoFillStruct<cr>', 'Go: fill struct')
    map('<leader>ie', '<cmd>GoIfErr<cr>', 'Go: insert if err')
    -- Struct tags
    map('<leader>at', '<cmd>GoAddTag<cr>', 'Go: add struct tags')
    map('<leader>rt', '<cmd>GoRmTag<cr>', 'Go: remove struct tags')
    -- Tests
    map('<leader>tf', '<cmd>GoTestFunc<cr>', 'Go: test function')
    map('<leader>tF', '<cmd>GoTestFile<cr>', 'Go: test file')
    map('<leader>tt', '<cmd>GoTest<cr>', 'Go: test package')
    -- Navigation
    map('<leader>ga', '<cmd>GoAlt<cr>', 'Go: alternate file/test')
  end,
})
