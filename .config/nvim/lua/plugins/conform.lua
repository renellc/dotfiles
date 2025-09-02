return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		format_on_save = {
			timeout_ms = 1000,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "biome", "biome-organize-imports", "prettierd", "prettier", stop_after_first = true },
			javascriptreact = { "biome", "biome-organize-imports", "prettierd", "prettier", stop_after_first = true },
			typescript = { "biome", "biome-organize-imports", "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "biome", "biome-organize-imports", "prettierd", "prettier", stop_after_first = true },
		},
	},
}
