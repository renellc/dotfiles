local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- General vim settings
vim.g.mapleader = " "
vim.opt.mouse = "a"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 999

-- Fold settings
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

-- Plugin specific settings
vim.g.skip_ts_context_commentstring_module = true

require("lazy").setup("plugins")

-- Keymaps
require("which-key").register({
	g = {
		d = { require("telescope.builtin").lsp_definitions, "Jump To Definition" },
		r = { require("telescope.builtin").lsp_references, "List All References" },
		e = {
			function()
				require("telescope.builtin").diagnostics({ bufnr = 0 })
			end,
			"List All References",
		},
	},
	c = {
		a = { vim.lsp.buf.code_action, "Code Action" },
	},
	d = {
		n = { vim.diagnostic.goto_next, "Goto Next Diagnostic" },
		p = { vim.diagnostic.goto_prev, "Goto Next Diagnostic" },
	},
	h = {
		s = { require("telescope.builtin").help_tags, "Search Help" },
	},
}, { prefix = "<leader>" })

vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true })
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { noremap = true })
