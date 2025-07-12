-- general options
vim.opt.rnu = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.guicursor = "n-v-i-c:block-Cursor"

-- color scheme
vim.opt.background = "dark"

-- keybinds
local map = vim.keymap.set
local telescope = require("telescope.builtin")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- : => ;
map("n", ";", ":")

-- telescope
map("n", "<leader>ff", telescope.find_files)
map("n", "<leader>fw", telescope.live_grep)
map("n", "<leader>fb", telescope.buffers)

-- commenting
map("n", "<leader>/", "gcc", { remap = true })
map("v", "<leader>/", "gc", { remap = true })

-- tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
-- map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")

-- buffers
map("n", "L", "<cmd>bnext<CR>")
map("n", "H", "<cmd>bprevious<CR>")
map("n", "<Tab>", "<cmd>bnext<CR>")
map("n", "<leader>x", "<cmd>bd<CR>")

-- lsp
map("n", "<leader>gd", "<cmd>lua vim.lsp.buf.declaration()<CR>")
map("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- colors
local theme_script_path = vim.fn.expand("~/.local/share/tinted-theming/tinty/base16-vim-colors-file.vim")

local function file_exists(file_path)
	return vim.fn.filereadable(file_path) == 1 and true or false
end

local function handle_focus_gained()
	if file_exists(theme_script_path) then
		vim.cmd("source " .. theme_script_path)
	end
end

if file_exists(theme_script_path) then
	vim.o.termguicolors = true
	vim.g.tinted_colorspace = 256
	vim.g.tinted_background_transparent = "1"

	vim.cmd("source " .. theme_script_path)

	vim.api.nvim_create_autocmd("FocusGained", {
		callback = handle_focus_gained,
	})
end
