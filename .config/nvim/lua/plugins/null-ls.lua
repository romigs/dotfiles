local status_safe, null_ls = pcall(require, "null-ls")
if not status_safe then
	return
end

local on_attach = function(client, bufnr)
	if client.server_capabilities.documentFormattingProvider then
		-- Format on save
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ bufnr = bufnr, noremap = true })
			end,
		})
	end
end

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.shfmt,
		null_ls.builtins.formatting.prettier.with({
			filetypes = {
				"javascript",
				"typescript",
				"css",
				"scss",
				"html",
				"yaml",
				"markdown",
				"graphql",
				"md",
				"json",
				"txt",
			},
		}),
		null_ls.builtins.formatting.phpcsfixer.with({
			filetypes = { "php" },
		}),
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.diagnostics.selene,
	},
	on_attach = on_attach,
})
