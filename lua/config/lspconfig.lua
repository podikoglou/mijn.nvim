vim.lsp.enable({
  "rust_analyzer",
  "clangd",
  "cssls",
  "ts_ls",
  "html",
  "csslsp",
  "bashls",
  "gopls",
  "golangci_lint_ls",
  "ocamllsp",
  "cmake",
  "astro",
  "docker_compose_language_service",
  "dockerls",
  "pyrefly",
  "biome",
  "tailwindcss",
  "yamlls",
  "helm_ls",
  "svelte",
  "emmylua_ls",
  "zls",
  "ruby_lsp",
  "vuels",
  "phpactor",
  "tinymist",
  "biome",
  "hls"
})

vim.lsp.config("hls", {
  cmd = { "haskell-language-server-wrapper", "--lsp" },
})

vim.lsp.config("html_s", {
})
