-- Telescope keymaps
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { desc = "Telescope help tags" })

-- oil keymaps
local oil = require("oil")
vim.keymap.set("n", "<leader>e", function()
	oil.toggle_float(oil.get_current_dir())
end, { desc = "oil toggle window" })

-- Editor keymaps
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action(s)" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Goto definition" })
vim.keymap.set("n", "<Shift-K>", vim.lsp.buf.hover, { desc = "Hover" })
