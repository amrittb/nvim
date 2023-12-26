-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Setup NvimTree
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    custom = { "^.git$" },
  },
})

require("nvim-web-devicons").setup({})

-- Toggle explorer
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", {silent = true, noremap = true})

