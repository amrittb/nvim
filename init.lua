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
  {'folke/tokyonight.nvim'},
  -- Status line
  {'nvim-lualine/lualine.nvim'},
  -- Add Indent guidelines
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  -- Allow comment toggle using 'gc'
  { 'numToStr/Comment.nvim', opts = {} },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "lua", "vim", "vimdoc", "json", "go", "gomod", "gosum", "gowork", "python", "java", "yaml" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
})

-------------------------------
-- Vim Options 
-------------------------------
-- Set leaderkey as <space>
vim.g.mapleader = ' '
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

-- Add/Change key bindings
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
--  vim.keymap.set({'n', 'x'}, 'gy', '"+y')
vim.keymap.set({'n', 'x'}, 'gp', '"+p')
--  vim.keymap.set({'n', 'x'}, 'x', '"_x')
--  vim.keymap.set({'n', 'x'}, 'X', '"_d')
--  vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Apply terminal colors
-- Uses Lazy.vim plugins
vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight')

-- Neovim File explorer
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30

-- Plugin setup
-- Status bar
require('lualine').setup({
  options = {
      icons_enabled = false,
      section_separators = '',
      component_separators = ''
    }
})

-- Indentation guides
require('ibl').setup()


