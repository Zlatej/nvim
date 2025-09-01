return {
	"zlatej/copy.nvim",
	config = function()
		require("copy").setup({
            keymap = {
                line = "<leader>cc",
            },
            -- Prefix to strip absolute path
            prefix = "/home/matej/repos/",
        })
	end,
}

