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
vim.cmd('colorscheme catppuccin')

-- keybinds
local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- : => ;
map("n", ";", ":")

-- reload config file (MAGIC)
map({ "n", "v" }, "<leader>o", ":update<CR> :source<CR>")

-- pick
map("n", "<leader>t", "<cmd>Telescope<CR>")
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>fw", "<cmd>Telescope grep_string<CR>")
map("n", "<leader>fb", "<cmd>Obsidian search<CR>")

-- commenting
map("n", "<leader>/", "gcc", { remap = true })
map("v", "<leader>/", "gc", { remap = true })

-- dial
local dial = require("dial.map")

map("n", "<C-a>", function() dial.manipulate("increment", "normal") end)
map("n", "<C-x>", function() dial.manipulate("decrement", "normal") end)
map("n", "g<C-a>", function() dial.manipulate("increment", "gnormal") end)
map("n", "g<C-x>", function() dial.manipulate("decrement", "gnormal") end)
map("x", "<C-a>", function() dial.manipulate("increment", "visual") end)
map("x", "<C-x>", function() dial.manipulate("decrement", "visual") end)
map("x", "g<C-a>", function() dial.manipulate("increment", "gvisual") end)
map("x", "g<C-x>", function() dial.manipulate("decrement", "gvisual") end)

-- tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
-- map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")

-- lsp
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")

local map_multistep = require('mini.keymap').map_multistep

map_multistep('i', '<Tab>', { 'pmenu_next' })
map_multistep('i', '<S-Tab>', { 'pmenu_prev' })
map_multistep('i', '<CR>', { 'pmenu_accept', 'minipairs_cr' })
map_multistep('i', '<BS>', { 'minipairs_bs' })

-- luasnip
-- map("i", "<C-e>", function()
--   require("luasnip").expand_or_jump(1)
-- end, { silent = true })
--

-- folding

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Hop
map("n", "f", "<Cmd>HopWord<CR>")

-- Buffers
map("n", "H", "<Cmd>:bprev<CR>")
map("n", "<Tab>", "<Cmd>:bprev<CR>")

map("n", "L", "<Cmd>:bnext<CR>")
map("n", "<S-Tab>", "<Cmd>:bnext<CR>")

map("n", "<leader>x", "<cmd>Bdelete<CR>")

-- shifting in visual mode stays in visual mode
map('x', '>', '>gv')
map('x', '<', '<gv')

-- move aroudn panes
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- cancel search highlighting
map("n", "<ESC>", ":noh<CR>")

-- move selected liens in visual mode?
map("x", "K", ":move '<-2<CR>gv-gv")
map("x", "J", ":move '>+1<CR>gv-gv")

-- jq
map("n", "<leader>q", "<cmd>%!jq<CR>")

-- clipboard
vim.opt.clipboard = "unnamedplus"
