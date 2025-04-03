local builtin = require("telescope.builtin")
local utils = require("utils")
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")

vim.g.mapleader = " "
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>pf", builtin.live_grep, {})
vim.keymap.set("n", "<leader>pv", builtin.find_files, {})
vim.keymap.set("n", "<leader>pe", vim.cmd.Ex, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>f", utils.format, {})
vim.keymap.set("n", "<leader>oi", function()
	vim.lsp.buf.code_action({
		context = { only = { "source.organizeImports.biome" } },
		apply = true,
	})
end)
vim.keymap.set("n", "<leader>af", harpoon_mark.add_file, {})
vim.keymap.set("n", "<leader>h", harpoon_ui.toggle_quick_menu, {})
