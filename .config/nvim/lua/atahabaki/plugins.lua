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

  -- Autocompletition
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use('hrsh7th/cmp-nvim-lsp')

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSPs
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- to quickly install any LSP server...

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Dev icons
  use "kyazdani42/nvim-web-devicons"

  -- Automatically set up your configuration after cloning packer.nvim
  -- should be placed below of all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

