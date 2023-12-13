-------------------------------
-- Vim Options 
-------------------------------
-- Show line numbers
vim.opt.number = true
-- Enable mouse selection for all modes
vim.opt.mouse = "a"
-- Ignore case when searching text
vim.opt.ignorecase = true
-- Smart casing
vim.opt.smartcase = true
-- Remove highlight from last search
vim.opt.hlsearch = false
-- Word wrap
vim.opt.wrap = true
-- Preserve indentation of wrapped lines
vim.opt.breakindent = true
-- Change tab size to 2
vim.opt.tabstop = 2
-- Shift by same value as tabstops when >> or <<
vim.opt.shiftwidth = 2
-- Change tabs to spaces
vim.opt.expandtab = true
-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'
-- Enable relative line number
vim.opt.relativenumber = true

-- Neovim File explorer
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30

