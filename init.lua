-- local functions and reference to vim
local vim = vim
local Plug = vim.fn['plug#']

-- plugins
vim.call('plug#begin')

Plug('nvim-tree/nvim-web-devicons') 
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.8' })
Plug('olimorris/onedarkpro.nvim')
Plug('lewis6991/gitsigns.nvim') -- OPTIONAL: for git status
Plug('romgrk/barbar.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')

vim.call('plug#end')

-- set where lua will find config files
home=os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

-- require config lua files
require "common"
require "theme"
require "vimtree"
require "telescope-config"
require "barbar"
require "lua_line"
require 'lsp-config'
