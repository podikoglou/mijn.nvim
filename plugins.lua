local ui = {
	-- UI
	{ "folke/zen-mode.nvim", opts = {
		plugins = {
			tmux = { enabled = true },
		},
	} },
	{
		"echasnovski/mini.icons",
		version = false,
		config = function()
			require("mini.icons").setup()
		end,
	},
	{
		"echasnovski/mini.tabline",
		version = false,
		config = function()
			require("mini.tabline").setup()
		end,
	},
}

local editing_support = {
	-- Editing Support
	{
		"echasnovski/mini.surround",
		version = false,
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"folke/ts-comments.nvim",
		opts = {},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "ruff" },
					rust = { "rustfmt", lsp_format = "fallback" },
					javascript = { "biome" },
					typescript = { "biome" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
		end,
	},
}

local navigation = {
	-- Navigation
	{ "nvim-telescope/telescope.nvim" },
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({})
		end,
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
	},
}

local language_support = {
	-- Language Support
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			{ "ms-jpq/coq_nvim", branch = "coq" },
			{ "ms-jpq/coq.artifacts", branch = "artifacts" },
			{ "ms-jpq/coq.thirdparty", branch = "3p" },
		},
		init = function()
			vim.g.coq_settings = {
				auto_start = "shut-up",
				-- Your COQ settings here
			}
		end,
		config = function()
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("clangd")
			vim.lsp.enable("cssls")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("bashls")
			vim.lsp.enable("gopls")
			vim.lsp.enable("golangci_lint_ls")
			vim.lsp.enable("ocamllsp")
			vim.lsp.enable("cmake")
			vim.lsp.enable("astro")
			vim.lsp.enable("docker_compose_language_service")
			vim.lsp.enable("dockerls")
			vim.lsp.enable("pyrefly")
			vim.lsp.enable("biome")
			vim.lsp.enable("tailwindcss")
			vim.lsp.enable("yamlls")
			vim.lsp.enable("helm_ls")
			vim.lsp.enable("svelte")
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("zls")
			vim.lsp.enable("ruby_lsp")
			vim.lsp.enable("vuels")
			vim.lsp.enable("phpactor")
			vim.lsp.enable("tinymist")
			vim.lsp.enable("biome")

			require("coq_3p")({
				{ src = "nvimlua", short_name = "nLUA" },
				{ src = "vimtex", short_name = "vTEX" },
				{ src = "builtin/c" },
				{ src = "builtin/css" },
				{ src = "builtin/html" },
				{ src = "builtin/js" },
				{ src = "builtin/syntax" },
				-- { src = "copilot", short_name = "COP", accept_key = "<c-f>" },
				-- { src = "codeium", short_name = "COD" },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				highlight = { enable = true },
			})
		end,
	},
}

local package_management = {
	-- Package Management
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
}

return {
	ui,
	editing_support,
	navigation,
	language_support,
	package_management,
}
