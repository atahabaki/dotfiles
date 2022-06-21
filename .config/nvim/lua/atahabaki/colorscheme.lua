local theme = "rose-pine"

local status, _ = pcall(vim.cmd, "colorscheme " .. theme)
if not status then
  vim.notify("theme: \"" .. theme .. "\" not found.")
  return
end
