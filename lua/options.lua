-- general options
vim.opt.rnu = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = false
vim.opt.autoindent = false

vim.opt.guicursor = "n-v-i-c:block-Cursor"

vim.opt.winborder = "rounded"

-- color scheme
vim.opt.background = "dark"

-- keybinds
local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- : => ;
map("n", ";", ":")

-- reload config file (MAGIC)
map({ "n", "v" }, "<leader>o", ":update<CR> :source<CR>")

-- pick
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>fw", "<cmd>Telescope grep_string<CR>")
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>")

-- commenting
map("n", "<leader>/", "gcc", { remap = true })
map("v", "<leader>/", "gc", { remap = true })

-- tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
-- map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")

-- buffers
-- map("n", "L", "<cmd>bnext<CR>")
-- map("n", "H", "<cmd>bprevious<CR>")
-- map("n", "<Tab>", "<cmd>bnext<CR>")
-- map("n", "<leader>x", "<cmd>bd<CR>")

-- lsp
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")

-- luasnip
map("i", "<C-e>", function()
  require("luasnip").expand_or_jump(1)
end, { silent = true })
-- Hop
map("n", "f", "<Cmd>HopWord<CR>")

-- Move to previous/next
map("n", "H", "<Cmd>BufferPrevious<CR>")
map("n", "<Tab>", "<Cmd>BufferPrevious<CR>")

map("n", "L", "<Cmd>BufferNext<CR>")
map("n", "<S-Tab>", "<Cmd>BufferNext<CR>")

-- Close buffer
map("n", "<leader>x", "<Cmd>BufferClose<CR>")

-- shifting in visual mode stays in visual mode
map('x', '>', '>gv')
map('x', '<', '<gv')

-- move aroudn panes
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

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
