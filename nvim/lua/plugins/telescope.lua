return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'folke/which-key.nvim',
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
		config = function()
			local builtin = require('telescope.builtin')
			local wk = require('which-key')

			wk.add({
				{ '<leader>ff',  builtin.find_files,                                  desc = 'Find file(s)',        mode = 'n' },
				{ '<leader>fm',  builtin.marks,                                       desc = 'Find mark(s)',        mode = 'n' },
				{ '<leader>fs',  builtin.live_grep,                                   desc = 'Search files',        mode = 'n' },
				{ '<leader>fb',  function() builtin.buffers({ sort_mru = true }) end, desc = 'Find open buffers',   mode = 'n' },
				{ '<leader>fd',  builtin.diagnostics,                                 desc = 'Find diagnostic(s)',  mode = 'n' },
				{ '<leader>gbc', builtin.git_bcommits,                                desc = 'List buffer commits', mode = 'n' },
			})
		end,
	},
	{
		'nvim-telescope/telescope-file-browser.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope.nvim',
		},
		config = function()
			require('telescope').load_extension('file_browser')

			local extensions = require('telescope').extensions
			local wk = require('which-key')

			wk.add({
				{
					'<leader>e',
					function()
						extensions.file_browser.file_browser({
							hidden = true,
							select_buffer = true,
							path = '%:p:h'
						})
					end,
					desc = 'Explore directory files',
					mode = 'n'
				},
				{
					'<leader>E',
					function()
						extensions.file_browser.file_browser({
							hidden = true,
						})
					end,
					desc = 'Explore project files',
					mode = 'n'
				},
			})
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
