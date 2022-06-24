local fn = vim.fn

-- install packer if not installed
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer, once finished restart neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- reload whenever this file changes
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- safe require
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- packer: use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- let packer manage itself
  use({'rose-pine/neovim', as = 'rose-pine'})

  -- Automatically set up your configuration after cloning packer.nvim
  -- should be placed below of all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

