return {
	{
		'echasnovski/mini.comment',
		dependencies = {
			'JoosepAlviste/nvim-ts-context-commentstring'
		},
		version = '*',
		event = 'BufReadPre',
		opts = {
			options = {
				custom_commentstring = function()
					return require('ts_context_commentstring').calculate_commentstring() or
					    vim.bo.commentstring
				end,
			}
		}
	},
	{
		'echasnovski/mini.pairs',
		version = '*',
		event = 'InsertEnter',
		config = true,
	},
}
