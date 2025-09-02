return {
	"neovim/nvim-lspconfig",
	config = function()
		local servers = {
			cssls = {},
			docker_compose_language_service = {},
			emmet_language_server = {},
			html = {},
			jsonls = {},
			lua_ls = {
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = { "vim", "require" },
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
						},
						telemetry = {
							enable = false,
						},
					},
				},
			},
			tailwindcss = {},
			ts_ls = {},
		}

		local lspconfig = require("lspconfig")

		for server_name, config in pairs(servers) do
			lspconfig[server_name].setup(config)
			vim.lsp.enable(server_name)
		end
	end,
}
