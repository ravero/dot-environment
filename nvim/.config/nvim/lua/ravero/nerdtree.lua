-- NERDTree Keybindings
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap('n', '<C-t>', ':NERDTreeToggle<CR>', opts)
keymap('n', '<leader>ft', ':NERDTreeFind<CR>', opts)
