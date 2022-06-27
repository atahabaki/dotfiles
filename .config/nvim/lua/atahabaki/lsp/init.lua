local status, _ = pcall(require, "lspconfig")
if not status then
  print "lspconfig not found"
  return
end

require("atahabaki.lsp.lsp-installer")
require("atahabaki.lsp.handlers").setup()
