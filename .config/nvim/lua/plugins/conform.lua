return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "biome", "biome-organize-imports", "prettierd", "prettier", stop_after_first = true },
			javascriptreact = { "biome", "biome-organize-imports", "prettierd", "prettier", stop_after_first = true },
			typescript = { "biome", "biome-organize-imports", "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "biome", "biome-organize-imports", "prettierd", "prettier", stop_after_first = true },
		},
	},
}
