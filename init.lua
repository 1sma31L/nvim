-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'core.keymaps'
require 'core.options'
require 'core.autocmd'
require 'core.init-lazy'
