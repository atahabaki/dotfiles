local opts = { noremap =  true, silent = false }
local keymap = vim.api.nvim_set_keymap

-- map leader key to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
