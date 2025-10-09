require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use "nvim-treesitter/nvim-treesitter"

    use {
	"nvim-telescope/telescope.nvim",
	requires = {
        "nvim-lua/plenary.nvim"
      },
    }

    use {
      "nvim-tree/nvim-tree.lua",
      requires = {
        "nvim-tree/nvim-web-devicons"
      },
    }

    use {"VonHeikemen/lsp-zero.nvim", branch = 'v4.x'}
    use "neovim/nvim-lspconfig"
    use {"mason-org/mason.nvim", run = ":MasonUpdate"}
    use "mason-org/mason-lspconfig.nvim"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/nvim-cmp"

    -- Image rendering

    -- use "shaunsingh/nord.nvim"
    use "navarasu/onedark.nvim"
end)

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
