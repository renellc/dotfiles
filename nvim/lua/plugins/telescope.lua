return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					theme = "center",
					dynamic_preview_title = true,
					sorting_strategy = "ascending",
					layout_config = {
						horizontal = {
							prompt_position = "top",
						},
					},
				},
				extensions = {
					file_browser = {
						grouped = true,
						hijack_netrw = true,
					},
				},
			})

			require("which-key").register({
				f = {
					f = { "<cmd>Telescope find_files<CR>", "Find File" },
					s = { "<cmd>Telescope live_grep<CR>", "Search Files" },
					S = { "<cmd>Telescope resume<CR>", "Search Files With Previous Query" },
					o = { "<cmd>Telescope oldfiles<CR>", "Show Recent Files" },
					b = { "<cmd>Telescope buffers<CR>", "Show Open Buffers" },
					m = { "<cmd>Telescope marks<CR>", "Show Marks" },
					e = { "<cmd>Telescope file_browser<CR>", "Open File Browser" },
					d = { "<cmd>Telescope diagnostics<CR>", "Open File Browser" },
				},
			}, { prefix = "<leader>" })
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").load_extension("file_browser")
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		config = function()
			require("telescope").load_extension("fzf")
		end,
	},
}
