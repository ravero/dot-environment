"----------------------------------------------------------
" Neovim Config
" My Vim configuration entry-point for Neovim Environment.
"----------------------------------------------------------

"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc
source $HOME/.config/nvim/options.vim
source $HOME/.config/nvim/plugins.vim

source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/which-key.vim

" Recommended for COC
set hidden
set nobackup
set nowritebackup
set updatetime=300

"------------------------------------------------
" Custom Mappings
"------------------------------------------------

" UI
colorscheme gruvbox

" Require Plugin Configs
lua require('ravero')

autocmd FileType dart :set tabstop=2 
autocmd FileType dart :set shiftwidth=2 
autocmd FileType dart :set softtabstop=2 

"" Split Windows
nnoremap [w <C-W><C-S> <C-W><C-J>
nnoremap ]w <C-W><C-V> <C-W><C-L>
nnoremap <Space>o <C-W>c
nnoremap <Space>O <C-W>o

"" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

:tnoremap <C-J> <C-W><C-J>
:tnoremap <C-K> <C-W><C-K>
:tnoremap <C-L> <C-W><C-L>
:tnoremap <C-H> <C-W><C-H>

"------------------------------------------------------------------------------
" COC Config
"------------------------------------------------------------------------------

" GoTo code navigation.
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)

" GoTo Navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Code Actions
nmap <Space>ca  <Plug>(coc-codeaction)
nmap <Space>a	<Plug>(coc-codeaction-selected)
xmap <Space>a	<Plug>(coc-codeaction-selected)
nmap <Space>cr	<Plug>(coc-rename)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugins before putting this into your config.
"inoremap <silent><expr> <TAB>
	"\ pumvisible() ? "\<C-n>" :
	"\ CheckBackspace() ? "\<TAB>" :
	"\ coc#refresh()

"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! CheckBackspace() abort
	"let col = col('.') - 1
	"return !col || getline('.')[col - 1] =~# '\s'
"endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Show Documentation for underlying type
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
	if CocAction('hasProvider', 'hover')
		call CocActionAsync('doHover')
	else
		call feedkeys('K', 'in')
	endif
endfunction

"imap <tab> <Plug>(coc-snippets-expand)
let g:UltiSnipsExpandTrigger = '<Nop>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-flutter',
	\ 'coc-vimlsp',
	\ 'coc-snippets',
	\ ]

"------------------------------------------------------------------------------
" COC Flutter Config
"------------------------------------------------------------------------------
nnoremap <Space>fo :below new output:///flutter-dev \| res 20<CR>
nnoremap <Space>fd :CocCommand flutter.devices<CR>
nnoremap <Space>fe :CocCommand flutter.emulators<CR>
nnoremap <Space>fr :CocCommand flutter.run<CR>
nnoremap <Space>fq :CocCommand flutter.dev.quit<CR>

