local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Remap esc
vim.keymap.set("i", "jk", "<Esc>", {})

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<leader>w", ":update<Return>", opts)
keymap.set("n", "<leader>q", ":quit<Return>", opts)
keymap.set("n", "<leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<leader>f", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<leader>t", ":NvimTreeToggle<Return>", opts)

-- Split window
keymap.set("n", "<leader>v", ":vsplit<Return>", opts)

-- Move windows
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>k", "<C-w>k")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>l", "<C-w>l")

-- Formatting
keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
