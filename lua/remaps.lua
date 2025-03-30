local builtin = require("telescope.builtin")

vim.g.mapleader = " "
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>pf", builtin.live_grep, {})
vim.keymap.set("n", "<leader>pv", builtin.find_files, {})
vim.keymap.set("n", "<leader>pe", vim.cmd.Ex, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
