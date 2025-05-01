return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({

			ensure_installed = {
				"lua",
				"python",
				"go",
				"sql",
				"make",
				"dockerfile",
				"yaml",
				"proto",
				"html",
			},

			ignore_install = {
				"graphql",
				"javascript",
				"typescript",
				"graphql",
				"terraform",
			},

			modules = {},

			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				-- additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},

			fold = {
				enable = true,
				-- disable = {},
			},
		})
	end,
}
