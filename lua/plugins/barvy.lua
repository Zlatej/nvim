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
	-- 	"vague2k/vague.nvim",
	-- 	config = function()
	-- 		require("vague").setup({
	-- 			vim.cmd.colorscheme("vague"),
	-- 		})
	-- 	end,
	-- },
}
