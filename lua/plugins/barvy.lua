function JaVidimBarvy()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	-- {
	-- 	"rose-pine/neovim",
	-- 	priority = 1000,
	-- 	name = "rose-pine",
	-- 	init = function()
	-- 		vim.cmd.colorscheme("rose-pine")
	-- 	end,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	priority = 1000,
	-- 	name = "catppuccin",
	-- 	init = function()
	-- 		vim.cmd.colorscheme("catppuccin-mocha")
	-- 	end,
	-- },
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		init = function()
			-- vim.cmd.colorscheme("kanagawa-wave")
			vim.cmd.colorscheme("kanagawa-dragon")
			-- vim.cmd.colorscheme("kanagawa-lotus")
		end,
	},
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
	-- 	init = function()
	-- 		vim.cmd.colorscheme("tokyonight-night")
	-- 	end,
	-- },
	-- {
	-- 	"ilof2/posterpole.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("posterpole").setup({
	-- 			-- config here
	-- 		})
	-- 		vim.cmd("colorscheme posterpole")
	-- 	end,
	-- },
	-- {
	-- 	"vague2k/vague.nvim",
	-- 	config = function()
	-- 		require("vague").setup({
	-- 			vim.cmd.colorscheme("vague"),
	-- 		})
	-- 	end,
	-- },
}
