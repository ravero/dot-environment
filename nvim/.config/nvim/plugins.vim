"------------------------------------------------
" VIM Plugins
" Configuration file for Plugins
"------------------------------------------------

call plug#begin()

" Utilities
Plug 'preservim/nerdtree'				" NERDTree
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'vim-airline/vim-airline'			" Vim Airline for Rich Statusbar
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'liuchengxu/vim-which-key'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Theming
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'	" Themes for Vim Airline
Plug 'sainnhe/gruvbox-material'			" Gruvbox Material Theme
Plug 'morhetz/gruvbox'					" Gruvbox Theme

" Text Editing
Plug 'tpope/vim-surround'				" Add Keyboard shortcuts for handling surrounding texts
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

" Language Services
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'L3MON4D3/LuaSnip'

" Flutter and Dart Support
Plug 'dart-lang/dart-vim-plugin'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'natebosch/dartlang-snippets'

" Git Integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'

call plug#end()
