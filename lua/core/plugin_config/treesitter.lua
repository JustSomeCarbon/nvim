require('nvim-treesitter.configs').setup({
  ensure_installed = {"elixir", "heex", "eex"},
  highlight = {
    enable=true,
    additional_vim_regex_highlighting = false,
  },
})
