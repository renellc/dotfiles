-- General
vim.opt.mouse = 'a'
vim.opt.updatetime = 250
vim.opt.scrolloff = 10

-- Line number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- Colorscheme
vim.cmd.colorscheme("catppuccin")

-- Folds
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
