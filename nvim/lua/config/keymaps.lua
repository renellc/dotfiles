local wk = require("which-key")

-- General
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- LSP
wk.add({
	{ "<Shift-K>",  vim.lsp.buf.hover,       desc = "Hover Info",       mode = "n" },
	{ "<leader>gd", vim.lsp.buf.definition,  desc = "Go to definition", mode = "n" },
	{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code action(s)",   mode = "n" },
	{ "<leader>cr", vim.lsp.buf.rename,      desc = "Rename",           mode = "n" },
})
