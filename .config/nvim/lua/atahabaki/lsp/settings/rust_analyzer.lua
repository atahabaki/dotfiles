return {
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
