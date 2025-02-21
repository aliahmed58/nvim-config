-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<leader>tt', ":NvimTreeToggle<CR>", {noremap = true, desc = 'Toggle Nvim Tree' })
vim.keymap.set('n', '<leader>tf', ":NvimTreeFocus<CR>", {noremap = true, desc = 'Focus Nvim Tree' })
