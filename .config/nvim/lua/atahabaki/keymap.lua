local opts = { noremap =  true, silent = false }
local topts = { silent = false }
local keymap = vim.api.nvim_set_keymap

-- map leader key to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Split navigation
keymap("n", "<leader>h", "<C-w><C-h>", opts)
keymap("n", "<leader>j", "<C-w><C-j>", opts)
keymap("n", "<leader>k", "<C-w><C-k>", opts)
keymap("n", "<leader>l", "<C-w><C-l>", opts)
-- escape terminal insert mode...
keymap("t", "<Esc>", "<C-\\><C-n>", topts)
-- open a terminal to
keymap("n", "<leader>th", ":vs | term<CR>", opts) -- the right
keymap("n", "<leader>tv", ":split | term<CR>", opts) -- the below
-- open up the explorer to the right
keymap("n", "<leader>e", ":Lex 16<CR>", opts)
