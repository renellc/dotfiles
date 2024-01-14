return {
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				yaml = { "yamlfmt" },
				javascript = { "prettierd", "prettier" },
				typescript = { "prettierd", "prettier" },
				javascriptreact = { "prettierd", "prettier" },
				typescriptreact = { "prettierd", "prettier" },
				svelte = { "prettierd", "prettier" },
				css = { "prettierd", "prettier" },
			},
		},
	},
}
