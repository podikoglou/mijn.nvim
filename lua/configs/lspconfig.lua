local configs = require "nvchad.configs.lspconfig"

local servers = {
  rust_analyzer = {},
  clangd = {},
  cssls = {},
  tsserver = {},
  bashls = {},
  gopls = {},
  ocamllsp = {},
  cmake = {},
  astro = {},
  docker_compose_language_service = {},
  dockerls = {},
  pyright = {},
  ruff_lsp = {},
  biome = {},
  tailwindcss = {},
  yamlls = {},
}

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
