--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

vim.g.loaded_netrw = true
vim.g.loaded_netrwPlugin = true

vim.g.have_nerd_font = true

require 'options'
require 'keymaps'
require 'autocmds'

-- [[ Install `lazy.nvim` plugin manager ]]

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]

require('lazy').setup {
  require 'plugins.bufferline',
  require 'plugins.comment',
  require 'plugins.conform',
  require 'plugins.gitsigns',
  require 'plugins.indentline',
  require 'plugins.lspconfig',
  require 'plugins.mini',
  require 'plugins.nvim-cmp',
  require 'plugins.nvim-tree',
  require 'plugins.nvim-treesitter',
  require 'plugins.telescope',
  require 'plugins.todo-comments',
  require 'plugins.vim-sleuth',
  require 'plugins.which-key',

  require 'colorscheme',
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
