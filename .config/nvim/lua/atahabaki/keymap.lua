local opts = { noremap =  true, silent = false }
local topts = { silent = false }
local keymap = vim.api.nvim_set_keymap

-- map leader key to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Split navigation
keymap("n", "<C-h>", "<C-w><C-h>", opts)
-- escape terminal insert mode...
keymap("t", "<Esc>", "<C-\\><C-n>", topts)
-- open a terminal to
keymap("n", "<leader>tv", ":vs | term<CR>", opts) -- the right
keymap("n", "<leader>th", ":split | term<CR>", opts) -- the below
