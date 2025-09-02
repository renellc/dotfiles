-- Remove search highlights after done with search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Code Actions
vim.keymap.set("n", "<leader><F2>", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Rename" })
vim.keymap.set("n", "<Shift-K>", vim.lsp.buf.hover, { desc = "Rename" })
vim.keymap.set("n", "<A-.>", vim.lsp.buf.code_action, { desc = "Rename" })
