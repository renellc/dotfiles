return {
	"stevearc/oil.nvim",
	lazy = false,
	opts = {},
	dependencies = { "echasnovski/mini.icons", "folke/which-key.nvim" },
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

		local wk = require("which-key")
		wk.add({
			"<leader>e",
			function()
				oil.toggle_float(oil.get_current_dir())
			end,
		})
	end,
}
