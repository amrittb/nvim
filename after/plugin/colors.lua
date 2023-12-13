-- Colorscheme
-- Apply terminal colors
vim.opt.termguicolors = true

function SetColorScheme(color)
  color = color or "catppuccin-frappe"

  -- Change colorscheme
  vim.cmd.colorscheme(color)
end

SetColorScheme()

