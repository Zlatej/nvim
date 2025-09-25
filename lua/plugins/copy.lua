return {
	"zlatej/ctx-copy.nvim",
	config = function()
		require("ctx-copy").setup({
			prefixes = {
				vim.fn.expand("~"),
				"repos/",
                "tmp",
			},
		})
	end,
}
