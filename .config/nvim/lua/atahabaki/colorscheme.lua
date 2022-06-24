local theme = "rose-pine"

local status, _ = pcall(vim.cmd, "colorscheme " .. theme)

-- set colorscheme after options
vim.cmd('colorscheme rose-pine')
if not status then
  vim.notify("theme: \"" .. theme .. "\" not found.")
  return
else
  require('rose-pine').setup({
    --- @usage 'main' | 'moon'
    dark_variant = 'moon',
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = false,
    disable_float_background = false,
    disable_italics = false,
  })
  -- set colorscheme after options
  vim.cmd('colorscheme rose-pine')
end
