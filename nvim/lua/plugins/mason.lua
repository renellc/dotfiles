return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup({})
			require("mason-lspconfig").setup({
				automatic_installation = true,
				ensure_installed = {
					-- LSP
					"cssls",
					"dockerls",
					"docker_compose_language_service",
					"eslint",
					"emmet_ls",
					"graphql",
					"html",
					"jsonls",
					"ocamllsp",
					"tsserver",
					"lua_ls",
					"pyright",
					"sqlls",
					"svelte",
					"taplo",
					"tailwindcss",
					"vimls",
					"yamlls",
				},
			})

			require("mason-lspconfig").setup_handlers({
				function(server_name)
					local capabilities = require("cmp_nvim_lsp").default_capabilities()
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
			})
		end,
	},
}
