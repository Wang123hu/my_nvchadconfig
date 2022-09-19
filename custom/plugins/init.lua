local overrides = require "custom.plugins.overrides"
return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["folke/which-key.nvim"] = { disable = false },
  -- Install debugger
  ["sakhnik/nvim-gdb"] = {
    cmd = {"GdbStartPDB", "GdbStart"},
    run = "./install.sh",
    config = function()
      require "custom.plugins.configs.nvimgdb"
    end,
  },

  -- Install outline view
  ["stevearc/aerial.nvim"] = {
    cmd = "AerialToggle",
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.aerial"
    end,
  },
}
