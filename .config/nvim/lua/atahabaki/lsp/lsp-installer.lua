local status, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status then
  return
end

local servers = {
  "sumneko_lua",
  "bashls",
  "dartls",
  "pyright",
  "rust_analyzer",
  "taplo"
}

lsp_installer.setup()

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("atahabaki.lsp.handlers").on_attach,
    capabilities = require("atahabaki.lsp.handlers").capabilities,
  }

  if server == "jsonls" then
    local jsonls_opts = require("atahabaki.lsp.settings.jsonls")
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  if server == "sumneko_lua" then
    local sumneko_opts = require("atahabaki.lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require("atahabaki.lsp.settings.pyright")
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  if server == "bashls" then
    local bashls_opts = require("atahabaki.lsp.settings.bashls")
    opts = vim.tbl_deep_extend("force", bashls_opts, opts)
  end

  if server == "rust_analyzer" then
    require('rust-tools').setup {
      tools = { -- rust-tools options
          autoSetHints = true,
          inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
          },
      },
      server = {
        on_attach = require('atahabaki.lsp.handlers').on_attach,
        capabilities = require('atahabaki.lsp.handlers').capabilities,
        settings = {
          ["rust-analyzer"] = {
            assist = {
              importGranularity = "module",
              importPrefix = "self",
            },
            checkOnSave = {
              command = "clippy"
            },
            cargo = {
              buildScripts = {
                enable = true,
              },
              loadOutDirsFromCheck = true
            },
            procMacro = {
              enable = true
            },
          }
        }
      }
    }
    goto continue
  end
lspconfig[server].setup(opts)
::continue::
end
