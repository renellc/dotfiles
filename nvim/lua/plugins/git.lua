return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufNewFile", "BufReadPre", "BufReadPost" },
		opts = {
			current_line_blame = true,
			current_line_blame_opts = {
				delay = 0,
			},
		},
	},
}
