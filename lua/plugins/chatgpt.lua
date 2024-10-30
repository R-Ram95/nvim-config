return {
	"jackMort/ChatGPT.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim", -- optional
		"nvim-telescope/telescope.nvim",
	},
	event = "VeryLazy",
	config = function()
		local home = vim.fn.expand("$HOME/Documents/keys")

		require("chatgpt").setup({
			api_key_cmd = "gpg --decrypt " .. home .. "/openai.txt.gpg",
			openai_params = {
				model = "gpt-3.5-turbo",
				frequency_penalty = 0,
				presence_penalty = 0,
				max_tokens = 4095,
				temperature = 0.2,
				top_p = 0.1,
				n = 1,
			},
		})
	end,
}
