local status, lualine = pcall(require, "lualine")
if not status then
  return
end

lualine.setup {
  options = {
    theme = 'rose-pine',
    global_status = true,
    section_seperators = { right = '', left = '' },
    -- component_separators = { right = '', left = '' }
    component_separators = '',
  },
}
