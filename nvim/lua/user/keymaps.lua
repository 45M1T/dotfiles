vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
local cmd = vim.cmd

-- NETRW --
keymap("n", "<leader>pv", "<cmd>Ex<CR>", opts)
-- keymap("n", "<leader>ee", "<cmd>Lex<CR><cmd>vertical resize 15<CR><cmd>3<CR>", opts)

-- MOVE --
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- WINDOW --
keymap("n", "<leader>wh", "<C-w>h", opts)
keymap("n", "<leader>wj", "<C-w>j", opts)
keymap("n", "<leader>wk", "<C-w>k", opts)
keymap("n", "<leader>wl", "<C-w>l", opts)

-- INCREMENT / DECREMENT --
keymap("n", "+", "<C-a>", opts)
keymap("n", "-", "<C-x>", opts)

-- SELECT ALL --
keymap("n", "<C-a>", "ggVG", opts)

-- NAVIGATE --
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
