local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
  'nvim-treesitter/nvim-treesitter';

  { 'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim'
  };

  { 'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons'
  };

  { 'VonHeikemen/lsp-zero.nvim',
    branch = 'v4.x'
  };

  'neovim/nvim-lspconfig';

  { 'mason-org/mason.nvim', run = ':MasonUpdate' };

  'mason-org/mason-lspconfig.nvim';

  'hrsh7th/cmp-nvim-lsp';

  'hrsh7th/nvim-cmp';

  'navarasu/onedark.nvim';
}

-- base environment setup
require("core.env")

-- plugin library setup and configuration files
require("core.plugin_config")

-- enable color scheme
-- vim.cmd[[colorscheme nord]]
-- require("nord").set()

require("onedark").setup {
  transparent = true,
  style = 'dark'
}
require("onedark").load()
