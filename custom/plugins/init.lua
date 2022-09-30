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
    cmd = { "GdbStartPDB", "GdbStart" },
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

  -- Install markdown preview
  ["iamcco/markdown-preview.nvim"] = {
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.api.nvim_exec(
        [[
      let g:mkdp_browser = 'google-chrome'
      ]],
        true
      )
    end,
    ft = { "markdown" },
  },
  -- Install hop for quick moveing
  ["phaazon/hop.nvim"] = {
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("custom.plugins.configs.hop")
    end,
  },
  -- Install doge for docstring generation 
  ['kkoomen/vim-doge'] = {
    run = ":call doge#install()",
    config = function ()
      require("custom.plugins.configs.doge")
    end,
  },
}
