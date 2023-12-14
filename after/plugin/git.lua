-- Enable gitsigns in buffer window
require('gitsigns').setup()
-- Open Git
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
