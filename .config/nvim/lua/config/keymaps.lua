-- Remove search highlights after done with search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Code Actions
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Goto definition" })
vim.keymap.set("n", "<Shift-K>", vim.lsp.buf.hover, { desc = "Hover" })
vim.keymap.set("n", "<A-.>", vim.lsp.buf.code_action, { desc = "Code action(s)" })
