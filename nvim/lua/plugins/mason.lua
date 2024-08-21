return {
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason").setup({})

			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup({
				automatic_installation = true,
				ensure_installed = {
					"lua_ls",
				},
			})

			mason_lspconfig.setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
				["lua_ls"] = function()
					require("lspconfig").lua_ls.setup({
						settings = {
							Lua = {
								diagnostics = {
									globals = {
										"vim",
										"require",
									},
								},
								workspace = {
									library = vim.api.nvim_get_runtime_file("", true),
								},
							},
						},
					})
				end,
			})

			require("lspconfig").gdscript.setup({})
		end,
	},
}
