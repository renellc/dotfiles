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
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope.nvim',
		},
		config = function()
			require('telescope').load_extension('file_browser')
		end,
	},
}
