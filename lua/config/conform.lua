function setup()
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
end
