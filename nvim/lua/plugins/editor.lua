return {
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "VeryLazy",
		main = "ibl",
		config = function()
			require("ibl").setup({})
		end
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
		"kevinhwang91/nvim-ufo",
		event = "VeryLazy",
		dependencies = {
			"kevinhwang91/promise-async",
		},
		config = function()
			require("ufo").setup({
				provider_selector = function(bufnr, filetype, buftype)
					return { "treesitter", "indent" }
				end,
			})
		end,
	},
}
