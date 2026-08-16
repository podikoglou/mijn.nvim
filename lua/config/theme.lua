vim.opt.background = "dark"

require("catppuccin").setup({
	transparent_background = true,
})

vim.cmd.colorscheme("catppuccin")

for _, group in ipairs({
	"Normal",
	"NormalNC",
	"SignColumn",
	"EndOfBuffer",
	"FoldColumn",
	"CursorLine",
	"StatusLine",
	"StatusLineNC",
	"WinSeparator",
	"NvimTreeNormal",
	"NvimTreeNormalNC",
	"NvimTreeEndOfBuffer",
	"NvimTreeVertSplit",
	"NvimTreeWinSeparator",
}) do
	vim.api.nvim_set_hl(0, group, { bg = "NONE" })
end
