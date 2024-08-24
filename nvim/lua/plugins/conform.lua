return {
	"stevearc/conform.nvim",
	event = "VeryLazy",
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				javascript = { "biome", "prettierd", "prettier" },
				javascriptreact = { "biome", "prettierd", "prettier" },
				lua = { "stylua" },
				python = { "ruff_fix", "ruff_format" },
				typescript = { "biome", "prettierd", "prettier" },
				typescriptreact = { "biome", "prettierd", "prettier" },
			},
		})
	end,
}
