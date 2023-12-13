--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
-- Set leaderkey as <space>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- See `:help vim.keymap.set()`
-- No operation on normal and visual mode
-- TODO: Terminal mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- Open Netrw
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- Helper remaps to move vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

-- Split screen vertically
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true })
-- Remap Ctrl+movement keys to move between windows
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { noremap = true })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { noremap = true })

