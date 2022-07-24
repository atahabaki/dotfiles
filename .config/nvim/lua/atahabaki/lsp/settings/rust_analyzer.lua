return {
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importGranularity = "module",
        importPrefix = "self",
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
