-------------------------------
-- Vim Options 
-------------------------------
-- Enable Fat cursor
vim.opt.guicursor = ""

-- Show line numbers
vim.opt.number = true
-- Enable relative line number
vim.opt.relativenumber = true

-- Enable mouse selection for all modes
vim.opt.mouse = "a"

-- Ignore case when searching text
vim.opt.ignorecase = true
-- Smart casing
vim.opt.smartcase = true

-- Remove highlight from last search
vim.opt.hlsearch = false
-- Incremental search
vim.opt.incsearch = true

-- Word wrap
vim.opt.wrap = true
-- Preserve indentation of wrapped lines
vim.opt.breakindent = true

-- Change tab size to 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
-- Shift by same value as tabstops when >> or <<
vim.opt.shiftwidth = 2
-- Change tabs to spaces
vim.opt.expandtab = true

-- Always have 8 lines when scrolling
vim.opt.scrolloff = 8
-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Fast updatetime
vim.opt.updatetime = 50

-- Add column
vim.opt.colorcolumn = "100"

-- Neovim File explorer
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30

