return {
	{
		'stevearc/conform.nvim',
		event = { 'BufWritePre' },
		opts = {
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				javascript = { "prettierd", "prettier" },
				javascriptreact = { "prettierd", "prettier" },
				lua = { "stylua" },
				python = { "ruff_fix", "ruff_format" },
				sql = { "sql_formatter" },
				typescript = { "prettierd", "prettier" },
				typescriptreact = { "prettierd", "prettier" },
			},
		},
	},
}
