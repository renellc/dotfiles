return {
	"stevearc/oil.nvim",
	lazy = false,
	opts = {},
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		local oil = require("oil")
		oil.setup({
			view_options = {
				show_hidden = true,
				is_hidden_file = function(name, bufnr)
					return name ~= ".." and vim.startswith(name, ".")
				end,
			},
		})
	end,
}
