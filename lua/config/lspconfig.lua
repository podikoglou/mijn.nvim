vim.filetype.add({ extension = { goose = "goose" } })

vim.lsp.config("goose", {
	cmd = { "/home/alex/oss/goose/build/goose", "lsp" },
	filetypes = { "goose" },
	root_markers = { ".git" },
	-- init_options = { entryFiles = { "/path/to/project/main.goose" } },
})

vim.lsp.enable({
	"clangd",
	"hls",
	"goose",
})

vim.lsp.config("hls", {
	settings = {
		haskell = {
			formattingProvider = "ormolu",
		},
	},
})
