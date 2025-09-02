return {
	"folke/snacks.nvim",
	dependencies = {
		{ "echasnovski/mini.icons", version = "*", config = true },
	},
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		notifier = { enabled = true },
	},
}
