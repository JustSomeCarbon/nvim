vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-web-devicons").setup({
  color_icons = true,
  default = true
})

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive"
  },

  view = {
    width = 25,
    cursorline = true,
  },

  renderer = {
    highlight_git = true,
    highlight_opened_files = "all",
    group_empty = true,
  },

  filters = {
    dotfiles = true,
  },
})

-- open tree map
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>', {noremap = true, silent = true})
-- toggle focus on tree map
vim.keymap.set('n', '<leader>t', ':NvimTreeFocus<CR>', {noremap = true, silent = true})
-- toggle focus on editor
vim.keymap.set('n', '<leader>i', ':wincmd p<CR>', {noremap = true, silent = true})
-- toggle focus between open files
vim.keymap.set('n', '<leader>l', '<C-w>l', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>h', '<C-w>h', {noremap = true, silent = true})
