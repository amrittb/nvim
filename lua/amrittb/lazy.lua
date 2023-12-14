-------------------------------
-- Setup Lazy.vim 
-------------------------------
local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  if vim.g.plugins_ready then
    return
  end

  -- You can "comment out" the line below after lazy.nvim is installed
  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)

  require('lazy').setup(plugins, lazy.opts)
  vim.g.plugins_ready = true
end


lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

-- Actual setup for plugins
lazy.setup({
  -- Themes
  'navarasu/onedark.nvim',
  'folke/tokyonight.nvim',
  { "catppuccin/nvim", name = "catppuccin" },

  -- UI: Status line
  'nvim-lualine/lualine.nvim',

  -- Navigation: Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Navigation: Harpoon
  {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
  },

  -- ParseTree: Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate",
  },

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Add Indent guidelines
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- Allow comment toggle
  'numToStr/Comment.nvim',

  -- LSP
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  -- Toggleterm
  'akinsho/toggleterm.nvim',

  -- Undotree
  'mbbill/undotree',

  -- Add support for Git Worktree
  'ThePrimeagen/git-worktree.nvim',
})

