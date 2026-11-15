require("mini.completion").setup({})

-- mini.completion falls back to Neovim's builtin keyword completion
-- (`fallback_action = '<C-n>'`) in any buffer without an LSP client, and that
-- pulls words from all buffers/windows ('complete' = ".,w,b,u"). File pickers
-- like fff use a prompt buffer, so every typed character in the search box
-- pops up unrelated buffer words. See `:h MiniCompletion` ("Disabling").
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
	group = vim.api.nvim_create_augroup("MiniCompletionPickers", { clear = true }),
	callback = function(args)
		local bo = vim.bo[args.buf]
		if bo.buftype == "prompt" or bo.filetype:match("^fff_") then
			vim.b[args.buf].minicompletion_disable = true
		end
	end,
	desc = "Disable mini.completion in picker/prompt buffers",
})
