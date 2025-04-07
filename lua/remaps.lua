local builtin = require("telescope.builtin")
local utils = require("utils")
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pf", builtin.live_grep, {})
vim.keymap.set("n", "<leader>pv", builtin.find_files, {})
vim.keymap.set("n", "<leader>pg", builtin.git_status, {})
vim.keymap.set("n", "<leader>pd", builtin.diagnostics, {})
vim.keymap.set("n", "<leader>po", builtin.oldfiles, {})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
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
vim.keymap.set("n", "<leader>ef", vim.diagnostic.open_float, {})

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>/", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = "[/] Fuzzily search in current buffer" })
