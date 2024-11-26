-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- spaces for identing
vim.opt.expandtab = true

-- display trailing spaces, nbsp and tab chars
vim.opt.list = true

-- default tab size
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
-- show color column
vim.opt.colorcolumn = { 100 }

-- show line numbers
vim.opt.number = true
