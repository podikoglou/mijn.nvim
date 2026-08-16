vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({})

-- Use the terminal background in the file tree.
for _, group in ipairs({
	"NvimTreeNormal",
	"NvimTreeNormalNC",
	"NvimTreeEndOfBuffer",
	"NvimTreeVertSplit",
	"NvimTreeWinSeparator",
}) do
	vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end
