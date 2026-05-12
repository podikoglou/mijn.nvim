vim.lsp.enable({
  'clangd',
  'hls',
})

vim.lsp.config('hls', {
  settings = {
    haskell = {
      formattingProvider = 'ormolu',
    },
  },
})
