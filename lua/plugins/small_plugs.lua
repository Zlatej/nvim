return {
	{ "NvChad/nvim-colorizer.lua", opts = { user_default_options = { tailwind = true } } },

	-- cursor stuff
	{ "mg979/vim-visual-multi" },
	{ "karb94/neoscroll.nvim", opts = { duration_multiplier = 0.35 } },
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			stiffness = 0.6, -- 0.6      [0, 1]
			-- trailing_stiffness = 0.6, -- 0.45     [0, 1]
			stiffness_insert_mode = 0.6, -- 0.5      [0, 1]
			-- trailing_stiffness_insert_mode = 0.6, -- 0.5      [0, 1]
			-- damping = 0.95, -- 0.85     [0, 1]
			-- damping_insert_mode = 0.95, -- 0.9      [0, 1]
			distance_stop_animating = 0.5, -- 0.1      > 0
			trailing_stiffness = 0.5,
			matrix_pixel_threshold = 0.5,
			time_interval = 7,
		},
	},
}
