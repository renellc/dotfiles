return {
	{
		"lukas-reineke/indent-blankline.nvim",
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
}
