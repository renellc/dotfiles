return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim", "folke/which-key.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				dynamic_preview_title = true,
				sorting_strategy = "ascending",
				selection_strategy = "follow",
				layout_config = {
					horizontal = {
						prompt_position = "top",
					},
				},
				prompt_title = "Query",
			},
		})

		local builtin = require("telescope.builtin")
		local wk = require("which-key")

		wk.add({
			{
				"<leader>ff",
				builtin.find_files,
				desc = "Find file(s)",
				mode = "n",
			},
			{
				"<leader>fm",
				builtin.marks,
				desc = "Find mark(s)",
				mode = "n",
			},
			{
				"<leader>fs",
				builtin.live_grep,
				desc = "Search files",
				mode = "n",
			},
			{
				"<leader>fb",
				function()
					builtin.buffers({ sort_mru = true })
				end,
				desc = "Find open buffers",
				mode = "n",
			},
			{
				"<leader>fd",
				builtin.diagnostics,
				desc = "Find diagnostic(s)",
				mode = "n",
			},
			{
				"<leader>gbc",
				builtin.git_bcommits,
				desc = "List buffer commits",
				mode = "n",
			},
		})
	end,
}
