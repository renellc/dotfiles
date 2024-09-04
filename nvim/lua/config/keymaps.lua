-- General
vim.keymap.set("n", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, {})
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, {})

-- Telescope
local extensions = require("telescope").extensions
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", function()
	builtin.find_files({
		hidden = true,
	})
end, {})
vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", function()
	builtin.buffers({
		sort_mru = true,
	})
end, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fm", builtin.marks, {})

vim.keymap.set("n", "<leader>fE", function()
	extensions.file_browser.file_browser({
		hidden = true,
	})
end, {})

vim.keymap.set("n", "<space>fe", function()
	extensions.file_browser.file_browser({
		hidden = true,
		select_buffer = true,
		path = "%:p:h",
	})
end, {})
