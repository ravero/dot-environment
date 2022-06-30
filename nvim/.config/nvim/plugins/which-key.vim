
nnoremap <silent> <leader>		:<c-u>WhichKey '<leader>'<CR>
nnoremap <silent> <Space>		:<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> g				:<c-u>WhichKey 'g'<CR>

" Space Keys Dictionary
let g:which_key_map_space = { 
			\ 'name': 'Space', 
			\ 'a': 'Code actions',
			\ 'o': 'Close current window',
			\ 'O': 'Close all other windows',
			\ }
let g:which_key_map_space.c = {
			\ 'name': 'Code actions+',
			\ 'a': 'Code actions',
			\ 'r': 'Rename Symbol',
			\ }
let g:which_key_map_space.f = {
			\ 'name': 'Flutter',
			\ 'd': 'Devices',
			\ 'e': 'Emulators',
			\ 'r': 'Run',
			\ 'o': 'Output',
			\ 'q': 'Quit Session',
			\ }

" 'g' Keys Dictionary
let g:which_key_map_g = {
			\ 'name': 'GoTo Commands',
			\ '[': 'Previous Diagnostics',
			\ ']': 'Next Diagnostics',
			\ 'i': 'Implementation',
			\ 'r': 'References',
			\ 'd': 'Definition',
			\ 'y': 'Type Definition',
			\ }

" Register Dictionaries
call which_key#register('<Space>', "g:which_key_map_space")
call which_key#register('g', "g:which_key_map_g")
