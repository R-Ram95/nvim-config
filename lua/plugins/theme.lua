return {
	{
		"binhtran432k/dracula.nvim",
		lazy = false,
		name = "dracula",
		priority = 1000,
		opts = {},
		config = function()
			require("dracula").setup({
				style = "soft",
				transparent = true,
			})
			vim.cmd("colorscheme dracula")
		end,
	},
}
