require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff" },
		rust = { "rustfmt", lsp_format = "fallback" },
		typescriptreact = { "oxfmt" },
		typescript = { "oxfmt" },
		javascript = { "oxfmt" },
		javascriptreact = { "oxfmt" },
		c = { "clang-format", "--style=file" },
		cpp = { "clang-format", "--style=file" },
		json = { "oxfmt" },
		vue = { "oxfmt" },
		yaml = { "yamlfmt" },
	},
	format_on_save = function(bufnr)
		if vim.fn.filereadable(vim.fn.getcwd() .. "/.noformat") == 1 then
			return nil
		end
		return { timeout_ms = 500, lsp_format = "fallback" }
	end,
})
