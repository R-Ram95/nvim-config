return {
	"akinsho/toggleterm.nvim",
	config = function()
		local toggleterm = require("toggleterm")

		toggleterm.setup({
			size = 20,
			open_mapping = [[<C-\>]],
			direction = "float",
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
					zindex = 0
				}
			}
		})
	end,
}
