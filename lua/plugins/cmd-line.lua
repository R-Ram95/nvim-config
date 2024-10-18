return {
	"VonHeikemen/fine-cmdline.nvim",
	config = function()
		vim.api.nvim_set_keymap('n', '<CR>', '<cmd>FineCmdline<CR>', {noremap = true})
	end
}
