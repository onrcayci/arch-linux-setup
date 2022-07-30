-- Load the plugins
require("plugins")

vim.o.syntax = "on"
vim.o.number = true
vim.o.autoindent = true
vim.o.wildmenu = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = false
vim.o.backspace = "indent,eol,start"
vim.o.mouse = "a"

-- NERDTree settings
vim.g.NERDTreeMinimalUI = 1
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeSortHiddenFirst = 1
vim.g.NERDTreeShowLineNumbers = 0

-- ALE settings
vim.g.ale_linters = {
	javascript = { "eslint" },
	python = { "mypy" },
}

vim.g.ale_fixers = {
	go = { "gofmt", "goimports", "golines" },
	javascript = { "prettier" },
	json = { "prettier" },
	markdown = { "prettier" },
	python = { "black", "isort" },
	typescript = { "prettier" },
}

-- Keybindings
vim.api.nvim_set_keymap("n", "<Leader>f", ":NERDTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-t>", ":tabNext<CR>", { noremap = true, silent = true })
