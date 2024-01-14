return {
	{
		"echasnovski/mini.indentscope",
		version = false,
		config = function()
			require("mini.indentscope").setup({})
		end,
	},
	{
		"echasnovski/mini.pairs",
		version = false,
		config = function()
			require("mini.pairs").setup({})
		end,
	},
	{
		"tpope/vim-sleuth",
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
		opts = {},
	},
}
