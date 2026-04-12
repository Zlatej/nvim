return {
	{ "NvChad/nvim-colorizer.lua", opts = { user_default_options = { tailwind = true } } },
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		opts = {},
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
}
