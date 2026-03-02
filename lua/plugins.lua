vim.pack.add({
	-- lib
	"https://github.com/nvim-lua/plenary.nvim",

	-- icons
	"https://github.com/echasnovski/mini.icons",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",

	-- ui
	"https://github.com/hiphish/rainbow-delimiters.nvim",
	"https://github.com/nvim-tree/nvim-tree.lua",
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/kepano/flexoki-neovim",
	-- future: https://nvim-mini.org/mini.nvim/readmes/mini-hues.html
  "https://github.com/moll/vim-bbye",

	-- editing
	"https://github.com/nvim-mini/mini.comment",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/rafamadriz/friendly-snippets",
	"https://github.com/nvim-mini/mini.snippets",
	"https://github.com/smoka7/hop.nvim",
	"https://github.com/nvim-mini/mini.pairs",
	"https://github.com/nvim-mini/mini.keymap",
	"https://github.com/nvim-mini/mini.basics",
	"https://github.com/nvim-mini/mini.statusline",
	"https://github.com/nvim-mini/mini.tabline",
	"https://github.com/nvim-mini/mini.indentscope",
	"https://github.com/monaqa/dial.nvim",
	"https://github.com/kevinhwang91/promise-async",
	"https://github.com/kevinhwang91/nvim-ufo",

	-- lsp & language support
	"https://github.com/williamboman/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/nvim-treesitter/nvim-treesitter",

	-- completion
	"https://github.com/nvim-mini/mini.completion",

	-- languages
	"https://github.com/Julian/lean.nvim",
	"https://github.com/mrcjkb/rustaceanvim",
})

require("config.dial")
require("config.mini_indentscope")
require("config.mini_icons")
require("config.mini_tabline")
require("config.mini_statusline")
require("config.mini_pairs")
require("config.hop")
require("config.mini_comment")
require("config.mini_basics")
require("config.conform")
require("config.telescope")
require("config.nvim-tree")
require("config.mason")
require("config.mini_completion")
require("config.lspconfig")
require("config.mini_snippets")
require("config.treesitter")
require("config.lean4")
require("config.ufo")
