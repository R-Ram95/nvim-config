return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			-- add linters, formatters, completion tools
			sources = {
				-- formatters
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,

				-- linter
				null_ls.builtins.diagnostics.eslint_d
			}
		})

		-- Key maps
		vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
	end
}
