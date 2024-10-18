return {
	{
		"binhtran432k/dracula.nvim",
		lazy = false,
		name = "dracula",
		priority = 1000,
		opts = {},
		config = function()
			require("dracula").setup({})
			vim.cmd("colorscheme dracula")
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
		end,
	},
}
