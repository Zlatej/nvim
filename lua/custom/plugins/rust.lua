-- Rust tooling. rustaceanvim configures the LSP itself — do NOT set up rust via
-- nvim-lspconfig as well.
-- https://github.com/mrcjkb/rustaceanvim
--
-- NOTE: in the old lazy.nvim spec the `['rust-analyzer']` settings sat at the top
-- level of the spec table, where lazy ignored them. rustaceanvim reads its config
-- from `vim.g.rustaceanvim`, so the settings are moved there to actually apply.

vim.g.rustaceanvim = {
  server = {
    default_settings = {
      ['rust-analyzer'] = {
        assist = {
          importEnforceGranularity = true,
          importPrefix = 'crate',
        },
        cargo = {
          allFeatures = true,
        },
        checkOnSave = true,
        inlayHints = { locationLinks = false },
        diagnostics = {
          enable = true,
          experimental = {
            enable = true,
          },
        },
      },
    },
  },
}

vim.pack.add {
  { src = 'https://github.com/mrcjkb/rustaceanvim', version = vim.version.range '9.*' },
}
