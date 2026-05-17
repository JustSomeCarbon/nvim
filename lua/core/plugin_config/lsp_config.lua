local lspconfig = require('lspconfig')

-- capabilities (optional, for nvim-cmp)
local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok, cmp = pcall(require, "cmp_nvim_lsp")
if ok then
  capabilities = cmp.default_capabilities(capabilities)
end

-- Load Mason
require('mason').setup({
  log_level = vim.log.levels.DEBUG
})

-- Load Mason Lspconfig
local mlsp = require('mason-lspconfig')
mlsp.setup({
  ensure_installed = {"lua_ls"},
  handlers = {
    function(servername)
      lspconfig[servername].setup({
        capabilities = capabilities,
      })
    end,
  }
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    --local client = vim.lsp.get_client_by_id(args.data.client_id)

    local opts = {buffer = bufnr, silent = true}

    -- keymappings for the lsp features
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
    vim.keymap.set('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
    vim.keymap.set('n', 'gD', "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
    vim.keymap.set('n', 'gi', "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
    vim.keymap.set('n', 'go', "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
    vim.keymap.set('n', 'gr', "<cmd>lua vim.lsp.buf.references()<cr>", opts)
    vim.keymap.set('n', 'gs', "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
  end,
})

-- Other way to set up
--[[

-- keymaps only when LSP attaches
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = args.buf, silent = true })
    vim.keymap.set("n", "<C-k>", vim.diagnostic.open_float, { buffer = args.buf, silent = true })
  end,
})

-- default config for every server
local default = {
  capabilities = capabilities,
}

-- per-server overrides (add more as needed)
local overrides = {
  lua_ls = {
    settings = {
      Lua = { diagnostics = { globals = { "vim" } } },
    },
  },
}

-- apply config to ALL Mason-installed servers, then enable them
local installed = mlsp.get_installed_servers()
for _, server in ipairs(installed) do
  vim.lsp.config[server] = vim.tbl_deep_extend("force", default, overrides[server] or {})
end
vim.lsp.enable(installed)
]]
