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

-- Split screen
vim.keymap.set("n", "<leader>|", ":vsplit<CR><C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>-", ":split<CR><C-w>l", { noremap = true })

