return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				highlight = {
					enable = true,
				},
				indent = {
					enable = true,
				},
				ensure_installed = {
					"css",
					"csv",
					"dockerfile",
					"graphql",
					"html",
					"javascript",
					"json",
					"lua",
					"python",
					"rust",
					"scss",
					"sql",
					"svelte",
					"toml",
					"tsx",
					"typescript",
					"vim",
					"vimdoc",
					"yaml",
				},
			})
		end,
	},
}
