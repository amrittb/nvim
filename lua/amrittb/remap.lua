--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
-- Set leaderkey as <space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- See `:help vim.keymap.set()`
-- No operation on normal and visual mode
-- TODO: Terminal mode
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
-- Open Netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
-- TODO Fix conflict
-- vim.keymap.set("v", "K", ":m ">-2<CR>gv=gv", { noremap = true })

-- Helper remaps to move vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.keymap.set("n", "n", "nzzzv", { noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true })

-- Split screen
vim.keymap.set("n", "<leader>|", ":vsplit<CR><C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>-", ":split<CR><C-w>l", { noremap = true })

-- Don"t loose paste register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Paste from OS copy register
vim.keymap.set("n", "<leader>p", "\"+P")
-- Copy to OS copy register
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- No operation for "Q"
vim.keymap.set("n", "Q", "<nop>")
