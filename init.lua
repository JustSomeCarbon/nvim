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
    use {"williamboman/mason.nvim", run = ":MasonUpdate"}
    use "williamboman/mason-lspconfig.nvim"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/nvim-cmp"

end)

-- base environment setup
require("core.env")

-- plugin library setup and configuration files
require("core.plugin_config")

-- vim.cmd.colorscheme('tokyonight')
