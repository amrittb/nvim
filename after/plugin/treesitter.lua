-- Treesitter
require("nvim-treesitter.configs").setup({
  ensure_installed = {
    -- For Neovim
    "vim",
    "vimdoc",
    "lua",

    -- File formats
    "json",
    "yaml",

    -- Golang
    "go",
    "gomod",
    "gosum",
    "gowork",

    -- Java
    "java",

    -- Python
    "python",
  },
  sync_install = false,
  auto_install = true,
  ignore_install = {},
  indent = { enable = true },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

