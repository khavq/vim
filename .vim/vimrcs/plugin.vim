" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call plug#begin()
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plug 'L9'
" Git plugin not hosted on GitHub
Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plug 'file:///home/khavq/.vim/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}

" install NERDTree
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Install vim-multiple-cursor
Plug 'terryma/vim-multiple-cursors'

" Install vim rails
Plug 'tpope/vim-rails'

" git for NERDTree
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

" Tab for NERDTree
Plug 'jistr/vim-nerdtree-tabs'

" Slim template
Plug 'slim-template/vim-slim'

" Install Airline
Plug 'vim-airline/vim-airline'

" Install 'mileszs/ack.vim'
Plug 'mileszs/ack.vim'

"Install them dracula
Plug 'dracula/vim', { 'name': 'dracula' }

" Comment
Plug 'scrooloose/nerdcommenter'

" JSX syntac hilight
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" autoread file
Plug 'djoshea/vim-autoread'

" indent line
Plug 'Yggdroot/indentLine'

"coffee script
Plug 'kchmck/vim-coffee-script'

" vue template
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'

"ctrlp.vim
"Plug 'kien/ctrlp.vim'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug '/usr/local/opt/fzf'
"Plug 'junegunn/fzf.vim', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"surround
Plug 'tpope/vim-surround'

" Open itern in NREDTREE
Plug 'mortonfox/nerdtree-iterm'

" move selected line
Plug 'matze/vim-move'

" Go plugin
Plug 'fatih/vim-go'

" Elixir
Plug 'elixir-editors/vim-elixir'

" Mix format
Plug 'mhinz/vim-mix-format'

" emment
Plug 'mattn/emmet-vim'

"json
Plug 'elzr/vim-json'

" delete buffer
Plug 'Asheq/close-buffers.vim'

" All of your Plugs must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"autocmd VimEnter * NERDTree       "tự chạy NERDTree ngay
autocmd BufEnter * NERDTreeMirror "thêm folder tree vào
autocmd VimEnter * wincmd p       "thêm màu mè cho code

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"let g:nerdtree_tabs_open_on_console_startup=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

"autocmd BufEnter * NERDTreeMirror "thêm folder tree vào

let g:NERDTreeWinSize=40
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None
let g:nerdtree_iterm_iterm_version = 3
set rtp+=/usr/local/opt/fzf
let g:user_emmet_mode='a'
