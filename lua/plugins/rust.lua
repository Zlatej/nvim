return {
	"mrcjkb/rustaceanvim",
	version = "^6", -- Recommended
	lazy = false, -- This plugin is already lazy
	["rust-analyzer"] = {
		assist = {
			importEnforceGranularity = true,
			importPrefix = "crate",
		},
		cargo = {
			allFeatures = true,
		},
		checkOnSave = {
			command = "clippy",
		},
		inlayHints = { locationLinks = false },
		diagnostics = {
			enable = true,
			experimental = {
				enable = true,
			},
		},
	},
}
