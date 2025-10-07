vim.pack.add({
  -- icons
  "https://github.com/echasnovski/mini.icons",
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",

  -- ui
  "https://github.com/romgrk/barbar.nvim",
  "https://github.com/hiphish/rainbow-delimiters.nvim",
  "https://github.com/nvim-tree/nvim-tree.lua",
  "https://github.com/nvim-mini/mini.pick",

  -- editing
  "https://github.com/nvim-mini/mini.comment",
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/nvim-mini/mini.snippets",
  "https://github.com/smoka7/hop.nvim",
  "https://github.com/nvim-mini/mini.pairs",

  -- lsp & language support
  "https://github.com/williamboman/mason.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-treesitter/nvim-treesitter",

  -- completion
  "https://github.com/nvim-mini/mini.completion",

  -- languages
  "https://github.com/Julian/lean.nvim",
})

require("config.mini_icons")
require("config.barbar")
require("config.mini_pairs")
require("config.hop")
require("config.mini_comment")
require("config.conform")
require("config.mini_pick")

require("config.nvim-tree")
require("config.mason")
require("config.mini_completion")
require("config.lspconfig")
require("config.mini_snippets")
require("config.treesitter")
require("config.lean4")
