vim.o.colorcolumn = "120"

-- termguicolors must be set, yapyapyap
vim.o.termguicolors = true

-- cycle lines
vim.cmd("set whichwrap+=h,l")
vim.cmd("set whichwrap+=<,>,[,]")
vim.o.mouse = "a"

-- -- Tab
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = {
-- 		"javascript",
-- 		"typescript",
-- 		"typescriptreact",
-- 		"javascriptreact",
-- 		"html",
-- 		"css",
-- 		"scss",
-- 		"json",
-- 		"yaml",
-- 	},
-- 	callback = function()
-- 		vim.bo.tabstop = 2
-- 		vim.bo.softtabstop = 2
-- 		vim.bo.shiftwidth = 2
-- 	end,
-- })

vim.o.smartindent = true

-- vim.o.list = false

-- [[ Basic Keymaps ]]

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps - might be overriding with vim.diagnostic.config in init.lua
-- vim.diagnostic.config({ virtual_text = true, float = { border = "rounded" } })

-- Add borders to LSP hover (Shift+K) and signature help windows
vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({ border = "rounded" })
end, { desc = "LSP Hover" })

-- Keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Yank to system clipboard
vim.api.nvim_set_keymap("n", "Y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "Y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "YY", '"+yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "YY", '"+yy', { noremap = true, silent = true })

-- Open main.* file
vim.keymap.set("n", "<leader>m", function()
	local files = vim.fn.glob("main.*", false, true)
	if #files > 0 then
		vim.cmd("e " .. files[1])
	else
		print("No main file found in current directory")
	end
end, { desc = "Open main file in current directory" })

-- Fill struct
vim.keymap.set("n", "<leader>fs", function()
	vim.lsp.buf.code_action({
		filter = function(action)
			return action.title:match("Fill ") or action.title:match("fill ")
		end,
		apply = true,
	})
end, { desc = "Fill struct" })
