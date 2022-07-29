local status, notifier = pcall(require, 'notify')
if not status then
  return
end

vim.notify = notifier
