-- autopairs
-- https://github.com/windwp/nvim-autopairs

vim.pack.add { 'https://github.com/windwp/nvim-autopairs' }

local npairs = require 'nvim-autopairs'
local Rule = require 'nvim-autopairs.rule'
local cond = require 'nvim-autopairs.conds'

npairs.setup {}

-- Pair `<>` for templates/generics. Scoped to languages where `<` is commonly
-- a generic delimiter, and only when preceded by a word char (e.g. `vector<`
-- triggers, `a < b` does not).
npairs.add_rule(Rule('<', '>', { 'cpp', 'c', 'rust', 'hpp', 'h', 'cc', 'cxx' }):with_pair(cond.before_regex '[%w_]'):with_move(function(opts)
  return opts.char == '>'
end))

-- rust-analyzer (loaded eagerly by rustaceanvim) finishes attaching after
-- autopairs and asynchronously deletes the buffer-local `>` skip-over mapping.
-- Re-assert autopairs' keymaps shortly after any LSP attaches so the closing
-- `>` survives.
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.defer_fn(function()
      if vim.api.nvim_buf_is_valid(args.buf) then
        vim.api.nvim_buf_call(args.buf, function()
          npairs.force_attach()
        end)
      end
    end, 300)
  end,
})
