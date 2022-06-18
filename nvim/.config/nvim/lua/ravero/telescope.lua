require('telescope').setup{
}

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap('n', '<C-p>', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)
