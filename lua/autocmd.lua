vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp", { clear = true }),
	callback = function(args)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = args.buf,
			callback = function()
				-- organize imports
				vim.lsp.buf.code_action({
					context = { only = { "source.organizeImports.biome" } },
					apply = true,
				})

				-- code_action is non-blocking, so we wait a reasonable amount of time here.
				vim.wait(100)

				-- format
				vim.lsp.buf.format { async = false, id = args.data.client_id }
			end
		})
	end,
})
