-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.mouse = 'a'

-- General Keybindings
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap('n', '<leader>h', ':noh', opts)			-- Disable Highlighting
keymap('n', '<C-s>', ':w<CR>', opts)			-- Save on Normal Mode
keymap('i', '<C-s>', '<Esc>:w<CR>a', {})		-- Save on Insert Mode
keymap('n', '<C-q>', ':q<CR>', opts)			-- Close Current Window

local silent_opts = { noremap = true, silent = true }
keymap('n', '<leader>a', ':<C-u>call append(line("."),   repeat([""], v:count1))<CR>', silent_opts)
keymap('n', '<leader>o', ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', silent_opts)

-- Append Configurations
require('ravero.lspconfig')
require('ravero.nerdtree')
require('ravero.telescope')

