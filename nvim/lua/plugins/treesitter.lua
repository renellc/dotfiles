return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = true,
		build = ':TSUpdate',
		config = function()
			local configs = require('nvim-treesitter.configs')
			configs.setup({
				ensure_installed = {
					"css",
					"csv",
					"dockerfile",
					"git_rebase",
					"gitcommit",
					"gitignore",
					"hcl",
					"html",
					"javascript",
					"jq",
					"jsdoc",
					"json",
					"lua",
					"luadoc",
					"markdown",
					"markdown_inline",
					"nginx",
					"python",
					"scss",
					"sql",
					"tsv",
					"typescript",
					"vim",
					"vimdoc",
					"yaml",
				},
				highlight = { enable = true },
				indent = { enable = true }
			})
		end,
	}
}
