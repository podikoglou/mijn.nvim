require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff" },
    rust = { "rustfmt", lsp_format = "fallback" },
    typescriptreact = { "oxfmt" },
    typescript = { "oxfmt" },
    javascript = { "oxfmt" },
    javascriptreact = { "oxfmt" },
    json = { "oxfmt" },
    vue = { "oxfmt" },
    yaml = { "yamlfmt" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})
