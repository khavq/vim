" Map leader key
let mapleader = " " " map leader key to ,
let g:mapleader = " "

" Fast saving
nmap <leader>w :w!<cr>
" Open fzf for searching files
nmap <leader>p :Files<cr>
nnoremap <silent> <Leader>f :Rg<CR>
" Map Esc to jj
:imap jj <Esc>

" Hide highlight
map <silent> <leader><cr> :noh<cr>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

map <leader>h <C-W>h
map <leader>l <C-W>l

" NERDCommenter map
map <leader>/ <plug>NERDCommenterToggle

"navigate file
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"When invoked, unless a starting directory is specified, CtrlP will set its local working directory according to this
let g:ctrlp_working_path_mode = 'ra'

"Exclude files or directories using Vim's
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

let g:move_key_modifier = 'C'

" copy current file path to clipboard
nnoremap ,c :let @* = expand("%")<cr>
nnoremap ,cc :let @* = expand("%:p")<cr>
