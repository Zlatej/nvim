return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		"moyiz/blink-emoji.nvim",
	},

	version = "1.*",

	opts = {
		keymap = { preset = "default" },

		appearance = {
			nerd_font_variant = "mono",
		},

		completion = {
			documentation = {
				auto_show = true,
				window = {
					border = "single",
				},
			},
			menu = {
				border = "single",
			},
		},

		snippets = { preset = "luasnip" },

		sources = {
			default = { "lsp", "path", "snippets", "buffer", "emoji" },

			providers = {
				emoji = {
					module = "blink-emoji",
					name = "Emoji",
					score_offset = 15, -- Tune by preference
					opts = {
						insert = true, -- Insert emoji (default) or complete its name
						---@type string|table|fun():table
						trigger = function()
							return { ":" }
						end,
					},
					should_show_items = function()
						return vim.tbl_contains(
							{ "gitcommit", "markdown", "html", "typescript", "typescriptreact" },
							vim.o.filetype
						)
					end,
				},
			},
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}
