local utils = require("utils")

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp", { clear = true }),
	callback = function(args)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = args.buf,
			callback = function()
				-- format
				vim.lsp.buf.format { async = false, id = args.data.client_id, filter = utils.format_filter }
			end
		})
	end,
})
