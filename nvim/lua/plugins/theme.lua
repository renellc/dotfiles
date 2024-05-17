return {
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		style = "moon",
	-- 	},
	-- 	config = function()
	-- 		vim.cmd([[colorscheme tokyonight]])
	-- 	end,
	-- },
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		vim.cmd("colorscheme rose-pine-moon")
	-- 	end,
	-- },
	-- {
	-- 	"sainnhe/sonokai",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		theme = "sonokai",
	-- 	},
	-- 	config = function()
	-- 		vim.opt.termguicolors = true
	-- 		vim.cmd([[let g:sonokai_style = "atlantis"]])
	-- 		vim.cmd([[let g:sonokai_better_performance = 1]])
	-- 		vim.cmd([[colorscheme sonokai]])
	-- 	end,
	-- },
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.opt.termguicolors = true
			vim.cmd([[let g:gruvbox_material_background = "medium"]])
			vim.cmd([[let g:gruvbox_material_better_performance = 1]])
			vim.cmd([[colorscheme gruvbox-material]])
		end,
	},
}
