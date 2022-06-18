"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc

"------------------------------------------------
" Custom Mappings
"------------------------------------------------

call plug#begin()

" Utilities
Plug 'preservim/nerdtree'				" NERDTree
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'vim-airline/vim-airline'			" Vim Airline for Rich Statusbar
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Theming
Plug 'vim-airline/vim-airline-themes'	" Themes for Vim Airline
Plug 'sainnhe/gruvbox-material'			" Gruvbox Material Theme
Plug 'morhetz/gruvbox'					" Gruvbox Theme

" Text Editing
Plug 'tpope/vim-surround'				" Add Keyboard shortcuts for handling surrounding texts
"Plug 'windwp/nvim-autopairs'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

" Language Services
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Flutter and Dart Support
Plug 'dart-lang/dart-vim-plugin'

call plug#end()

" UI
colorscheme gruvbox

" Require Plugin Configs
lua require('ravero')
