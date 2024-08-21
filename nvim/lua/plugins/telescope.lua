-- plugins/telescope.lua:
return {
	{

		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require("telescope").setup({
				defaults = {
					dynamic_preview_title = true,
					sorting_strategy = "ascending",
					selection_strategy = "follow",
					layout_strategy = "center",
					path_display = {
						truncate = 3
					},
					prompt_title = "Query",
				},
				extensions = {
					hijack_netrw = true,
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").load_extension("file_browser")
		end,
	},
	{ 
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make',
		config = function()
			require("telescope").load_extension("fzf")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-frecency.nvim",
		config = function()
			require("telescope").load_extension("frecency")
		end,
	},
}
