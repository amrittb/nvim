-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Setup NvimTree
require("neo-tree").setup()

-- Toggle tree
vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<cr>", {silent = true, noremap = true})

