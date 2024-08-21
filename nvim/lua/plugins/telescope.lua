-- plugins/telescope.lua:
return {
	{

		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require("telescope").setup({
				defaults = {
					theme = "center",
					dynamic_preview_title = true,
					sorting_strategy = "ascending",
					layout_config = {
						horizontal = {
							prompt_position = "top",
						},
					},
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
}
