-- ==:==:==:==:==:==:==
--   UNCATEGOORIZED
-- ==:==:==:==:==:==:==
-- set file encoding to UTF-8
vim.opt.fileencoding = "utf-8"
-- make `` visible in MD files
vim.opt.conceallevel = 0
-- show no mode in cmd line like --INSERT--
vim.opt.showmode = false
-- show tablines always(2)/never(0) or if tabs.length >= 2 (1)
vim.opt.showtabline = 2
-- nvim GUI font and size
vim.opt.guifont = "Cascadia Code:h8"

-- ==:==:==:==:==:==
--   FORMATTING
-- ==:==:==:==:==:==
-- convert tabs to spaces
vim.opt.expandtab = true
-- the number of spaces for each indentation
vim.opt.shiftwidth = 2
-- insert 2 spaces for a  tab
vim.opt.tabstop = 2
-- wrap lines?
vim.opt.wrap = false

-- ==:==:==:==:==:==:==
--   LINE NUMBER COL
-- ==:==:==:==:==:==:==
-- show line number
vim.opt.number = true
-- relative number
vim.opt.relativenumber = true
-- always show signs
vim.opt.signcolumn = "auto"
-- sets a ruler at 80th and 120th char
vim.opt.colorcolumn = {80,120}

-- ==:==:==:==
--   SEARCH
-- ==:==:==:==
-- highlight searches
vim.opt.hlsearch = true
-- highlight searches
vim.opt.hlsearch = true

-- ==:==:==:==
--   SPLIT
-- ==:==:==:==
-- horizontal splits gonna placed right side of curr win
vim.opt.splitright = true
-- vertical splits gonna placed below
vim.opt.splitbelow = true
