return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
		opts = {
			defaults = {
				dynamic_preview_title = true,
				sorting_strategy = 'ascending',
				selection_strategy = 'follow',
				prompt_title = 'Query'

			},
			extensions = {
				file_browser = {
					hijack_netrw = true,
				},
			},
		},
	},
	{
		'nvim-telescope/telescope-file-browser.nvim',
		lazy = true,
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope.nvim',
		},
		config = function()
			require('telescope').load_extension('file_browser')
		end,
	},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		lazy = true,
		config = function()
			require('telescope').load_extension('ui-select')
		end,
	}
}
