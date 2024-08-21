return {
	{
		"echasnovski/mini.indentscope",
		lazy = true,
		event = { "BufNewFile", "BufReadPre", "BufReadPost" },
		version = false,
		config = function()
			require("mini.indentscope").setup({})
		end,
	},
	{
		"echasnovski/mini.pairs",
		event = "InsertEnter",
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
		dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
		lazy = false,
		opts = {},
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
}
