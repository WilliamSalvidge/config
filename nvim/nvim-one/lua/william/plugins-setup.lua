local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

local status, packer = pcall(require, 'packer')
if not status then
  return
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use('bluz71/vim-nightfly-guicolors')

  -- window navigation / multiple windows
  use('christoomey/vim-tmux-navigator')

  -- file explorer
  use('nvim-tree/nvim-tree.lua')

  -- icons
  use('kyazdani42/nvim-web-devicons')

  -- statusline
  use('nvim-lualine/lualine.nvim')

  -- plenary
  -- pleanary necessary for find files
  use 'nvim-lua/plenary.nvim'

  -- fuzzy finding
  -- had to install ripgrep
  -- sudo apt-get install ripgrep for grep searching to work
  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make'})
  use({ 'nvim-telescope/telescope.nvim', branch = '0.1.x' })

  -- autocompletion
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')

  -- snippets
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  use('rafamadriz/friendly-snippets')

  -- managing & installing lsp servers
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')

  -- configuring nvim lsp servers
  use('neovim/nvim-lspconfig')

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
