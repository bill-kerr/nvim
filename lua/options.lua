vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.colorcolumn = "100"
vim.g.have_nerd_font = true
vim.opt.cursorline = true
vim.opt.confirm = true

-- Keeps cursor at least 10 lines from bottom of editor
vim.opt.scrolloff = 10

-- Case insensitive search unless \C or one or more capital letters are in search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
