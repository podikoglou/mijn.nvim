local leet_arg = "leetcode.nvim"

return {
  -- formatter :O
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- lspconfig cor configuring LSP servers
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()

      require "configs.lspconfig"
    end,
  },

  -- mason lsp server installer
  {
    "williamboman/mason.nvim",
  },

  -- treesitter with some preinstalled (or rather automatically installing) grammars
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "rust",
        "ocaml",
        "haskell",
        "bash",
        "elixir",
        "erlang",
        "html",
        "css",
        "typescript",
        "tsx",
      },
    },
  },

  -- leetcode plugin
  {
    "kawre/leetcode.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    lazy = leet_arg ~= vim.fn.argv()[1],
    opts = { arg = leet_arg },
  },

  {
    'boganworld/crackboard.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function()
      require('crackboard').setup({
      })
    end,
  },

  {
    "David-Kunz/gen.nvim",
    lazy = false,
    opts = {
      model = "argilla/notus"
    }
  },

}
