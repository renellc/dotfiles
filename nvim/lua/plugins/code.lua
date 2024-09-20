vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				sync_install = false,
				highlight = {
					enable = true,
				},
				indent = {
					enable = true,
				},
				ensure_installed = {
					"css",
					"dockerfile",
					"gdscript",
					"html",
					"javascript",
					"json",
					"lua",
					"python",
					"toml",
					"typescript",
					"yaml",
				},
				ignore_install = {},
			})
		end,
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
									globals = { "vim", "require" },
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
							-- Using Ruff's import organizer
							pyright = { disableOrganizeImports = true },
							python = {
								-- Ignore all files for analysis to exclusively use Ruff for linting
								analysis = { ignore = { "*" } },
							},
						},
					})
				end,
			})

			require("lspconfig").gdscript.setup({})
		end,
	},
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
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
					sql = { "sql_formatter" },
					typescript = { "biome", "prettierd", "prettier" },
					typescriptreact = { "biome", "prettierd", "prettier" },
				},
			})
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
		},
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "path" },
					{ name = "buffer" },
				}, { name = "buffer" }),
				mapping = cmp.mapping.preset.insert({
					["<Tab>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping.select_prev_item(),
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.close(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
			})
		end,
	}
}
