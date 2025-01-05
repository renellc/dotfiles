return {
	'hrsh7th/nvim-cmp',
	event = "InsertEnter",
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-buffer'
	},
	config = function()
		local cmp = require('cmp')

		cmp.setup({
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'path' },
				{ name = 'buffer' },
			}, { name = 'buffer' }),
			mapping = cmp.mapping.preset.insert({
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
		})
	end
}
