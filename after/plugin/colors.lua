-- Colorscheme
-- Apply terminal colors
vim.opt.termguicolors = true

function SetColorScheme(color)
  color = color or "catppuccin-frappe"

  -- Change colorscheme
  vim.cmd.colorscheme(color)
end

require("tokyonight").setup({
  styles = {
    sidebars = "normal",
    floats = "dark",
  },
  sidebars = {
    "qf", "help", "terminal"
  },
  on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
  end,
})

-- Enable tokyonight
SetColorScheme("tokyonight-storm")

