return {
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		opts = {},
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
}
