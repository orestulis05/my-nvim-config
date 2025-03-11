require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 2 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require('lazy').setup({
    require 'plugins.neotree',
    require 'plugins.colortheme',
    require 'plugins.bufferline',
    require 'plugins.lualine',
    require 'plugins.treesitter',
    require 'plugins.telescope',
    require 'plugins.lsp',
    require 'plugins.autocompletion',
    require 'plugins.gitsigns',
    require 'plugins.indent-blankline',
    require 'plugins.misc',
    require 'plugins.comment',
    require 'plugins.alphagreeter',
    require 'plugins.surround',
    require 'plugins.emmet',
    require 'plugins.liveserver'
})

-- Setting the theme
vim.cmd[[colorscheme tokyonight]]

-- Use nerd fonts (for icons n shit)
vim.g.have_nerd_font = true
