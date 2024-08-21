-- Telescope
local builtin = require("telescope.builtin")
local file_browser = require("telescope").extensions.file_browser

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set("n", "<leader>fE", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<space>fe", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

