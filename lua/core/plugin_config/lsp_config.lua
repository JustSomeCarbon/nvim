-- cmp capabilities
-- local capabilities = require('cmp_nvim_lsp').default_capabilties()

-- load lsp-zero
-- local lsp_zero = require("lsp-zero")

local lspconfig = require('lspconfig')

local lsp_attach = function(_, bufnr)
  local opts = {buffer = bufnr}
  -- keymappings for the lsp features
  vim.keymap.set('n', 'K', "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
  vim.keymap.set('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
  vim.keymap.set('n', 'gD', "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
  vim.keymap.set('n', 'gi', "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
  vim.keymap.set('n', 'go', "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
  vim.keymap.set('n', 'gr', "<cmd>lua vim.lsp.buf.references()<cr>", opts)
  vim.keymap.set('n', 'gs', "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
end


-- Load Mason
require('mason').setup({
  log_level = vim.log.levels.DEBUG
})

-- Load Mason Lspconfig
require('mason-lspconfig').setup({
  ensure_installed = {"lua_ls"},
  automatic_enable = true,
})

vim.keymap.set('n', '<C-_>', "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap=true, silent=true})

