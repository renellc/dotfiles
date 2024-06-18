return {
	{
		"stevearc/conform.nvim",
		event = "VeryLazy",
		opts = {
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				lua = { "stylua" },
				yaml = { "yamlfmt" },
				javascript = { "biome", "prettierd", "prettier" },
				typescript = { "biome", "prettierd", "prettier" },
				javascriptreact = { "biome", "prettierd", "prettier" },
				typescriptreact = { "biome", "prettierd", "prettier" },
				svelte = { "prettierd", "prettier" },
				css = { "prettierd", "prettier" },
			},
		},
	},
}
