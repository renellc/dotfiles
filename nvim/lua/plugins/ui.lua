return {
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
	{
		"utilyre/barbecue.nvim",
		event = { "BufNewFile", "BufReadPre", "BufReadPost" },
		name = "barbecue",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {},
		config = function()
			vim.opt.updatetime = 200

			require("barbecue").setup({
				create_autocmd = false,
			})

			vim.api.nvim_create_autocmd({
				"WinResized",
				"BufWinEnter",
				"CursorHold",
				"InsertLeave",
			}, {
				group = vim.api.nvim_create_augroup("barbecue.updater", {}),
				callback = function()
					require("barbecue.ui").update()
				end,
			})
		end,
	},
}
