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
			-- Automatically open help, settings, and session panels on start
			chat = {
				keymaps = {
					-- Custom keymaps to toggle panels after opening ChatGPT
					toggle_sessions = "<C-p>", -- Keybinding to open sessions panel
					toggle_help = "<C-h>", -- Keybinding to open help panel
					toggle_settings = "<C-o>", -- Keybinding to open settings panel
				},
			},
		})

		-- Custom function to open ChatGPT and trigger the panels
		local function open_chatgpt_with_panels()
			vim.cmd("ChatGPT") -- Open ChatGPT chat
			-- Automatically trigger the keybindings to open panels
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-o>", true, false, true), "n", false) -- Open settings
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-h>", true, false, true), "n", false) -- Open help
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-p>", true, false, true), "n", false) -- Open sessions
		end

		-- Keymap
		vim.keymap.set(
			"n",
			"<leader>c",
			open_chatgpt_with_panels,
			{ desc = "Open ChatGPT with settings, help, and sessions" }
		)
	end,
}
