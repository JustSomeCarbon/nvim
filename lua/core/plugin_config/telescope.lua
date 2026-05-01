-- Load and configure Telescope
local telescope = require('telescope')
local actions = require("telescope.actions")

telescope.setup({
  mappings = {
    i = {
      ["<Esc>"] = actions.close,
    },
  },
  pickers = {
    find_files = {
      hidden = true, -- dot files
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})

-- Load optional extensions
pcall(telescope.load_extension, "fzf")


-- Keymaps
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>fs", builtin.find_files, { noremap=true, silent=true, desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep,  { desc = "Live grep (rg)" })
vim.keymap.set("n", "<leader>fb", builtin.buffers,    { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags,  { desc = "Help tags" })

-- Nice extras
vim.keymap.set("n", "<leader>fo", builtin.oldfiles,    { desc = "Recent files" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>fr", builtin.resume,      { desc = "Resume last picker" })
vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy in buffer" })

