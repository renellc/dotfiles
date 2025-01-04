return {
	{

	},
	{
		'williamboman/mason.nvim',
		opts = {}
	},
	{
		'williamboman/mason-lspconfig.nvim',
		dependencies = {
			'williamboman/mason.nvim',
			'neovim/nvim-lspconfig',
		},
		config = function()
			local mason_lspconfig = require('mason-lspconfig')

			mason_lspconfig.setup({
				automatic_installation = true,
				ensure_installed = {
					"cssls",
					"dockerls",
					"docker_compose_language_service",
					"emmet_language_server",
					"eslint",
					"html",
					"jsonls",
					"lua_ls",
					"tailwindcss",
					"ts_ls",
					"yamlls",
				},
			})

			mason_lspconfig.setup_handlers({
				function(server_name)
					local capabilities = vim.lsp.protocol.make_client_capabilities()
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
				["lua_ls"] = function()
					require("lspconfig").lua_ls.setup({
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim", "require" },
								},
								workspace = {
									library = vim.api.nvim_get_runtime_file("", true)
								},
							},
						},
					})
				end,
			})
		end,
	},
}
