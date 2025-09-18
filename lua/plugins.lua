vim.pack.add({
  -- lib
  -- "https://github.com/nvim/plenary.nvim",

  -- icons
  "https://github.com/echasnovski/mini.icons",
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",

  -- ui
  "https://github.com/romgrk/barbar.nvim",
  "https://github.com/hiphish/rainbow-delimiters.nvim",
  "https://github.com/windwp/nvim-autopairs",
  "https://github.com/nvim-tree/nvim-tree.lua",
  "https://github.com/nvim-telescope/telescope.nvim",

  -- editing
  "https://github.com/folke/ts-comments.nvim",
  "https://github.com/stevearc/conform.nvim",

  -- lsp & language support
  "https://github.com/williamboman/mason.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-treesitter/nvim-treesitter",

  -- completion
  -- "https://github.com/ms-jpq/coq_nvim",
  -- "https://github.com/ms-jpq/coq.artifacts",
  -- "https://github.com/ms-jpq/coq.thirdparty",

  -- languages
  "https://github.com/Julian/lean.nvim",
})

require("config.mini_icons")
require("config.barbar")
require("config.autopairs")
require("config.ts-comments")
require("config.conform")
require("config.telescope")
require("config.nvim-tree")
require("config.mason")
require("config.lspconfig")
require("config.completion")
require("config.treesitter")
require("config.lean4")
