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
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
      },
    },
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

  -- obsidian integration (i literally don't have obsidian, i just use this to manage my notes)
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/mijn",
        },
      },
      daily_notes = {
        folder = "daily/",
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      mappings = {
        ["<cr>"] = {
          action = function()
            return require("obsidian").util.smart_action()
          end,
          opts = { buffer = true, expr = true },
        },
      },
      picker = {
        name = "telescope.nvim",

        mappings = {
          new = "<C-CR>",
        },
      },
    },
  },
}
