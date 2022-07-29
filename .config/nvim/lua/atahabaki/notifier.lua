local status, notifier = pcall(require, 'notify')
if not status then
  return
end

notifier.setup {
  max_width = 64,
  max_height = 32
}

vim.notify = notifier
