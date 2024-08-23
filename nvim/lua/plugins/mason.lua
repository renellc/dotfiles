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
					"biome",
					"cssls",
					"dockerls",
					"docker_compose_language_service",
					"emmet_language_server",
					"eslint",
					"html",
					"jsonls",
					"lua_ls",
					"pyright",
					"ruff",
					"tailwindcss",
					"tsserver",
					"yamlls",
				},
			})

			mason_lspconfig.setup_handlers({
				function(server_name)
					local capabilities = require("cmp_nvim_lsp").default_capabilities()
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
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
				["biome"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.biome.setup({})
				end,
				["ruff"] = function()
					require("lspconfig").ruff.setup({})

					vim.api.nvim_create_autocmd("LspAttach", {
						group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
						callback = function(args)
							local client = vim.lsp.get_client_by_id(args.data.client_id)
							if client == nil then
								return
							end
							if client.name == "ruff" then
								-- Disable hover in favor of Pyright
								client.server_capabilities.hoverProvider = false
							end
						end,
						desc = "LSP: Disable hover capability from Ruff",
					})
				end,
				["pyright"] = function()
					require("lspconfig").pyright.setup({

						settings = {
							pyright = {
								-- Using Ruff's import organizer
								disableOrganizeImports = true,
							},
							python = {
								analysis = {
									-- Ignore all files for analysis to exclusively use Ruff for linting
									ignore = { "*" },
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
