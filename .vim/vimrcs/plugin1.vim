" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/khavq/.vim/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" install NERDTree
Plugin 'scrooloose/nerdtree'

" Install vim-multiple-cursor
Plugin 'terryma/vim-multiple-cursors'

" Install vim rails
Plugin 'tpope/vim-rails'

" git for NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Tab for NERDTree
Plugin 'jistr/vim-nerdtree-tabs'

" Slim template
Plugin 'slim-template/vim-slim.git'

" Install Airline
Plugin 'vim-airline/vim-airline'

" Install 'mileszs/ack.vim'
Plugin 'mileszs/ack.vim'

"Install them dracula
Plugin 'dracula/vim', { 'name': 'dracula' }

" Comment
Plugin 'scrooloose/nerdcommenter'

" JSX syntac hilight
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" autoread file
Plugin 'djoshea/vim-autoread'

" indent line
Plugin 'Yggdroot/indentLine'

"coffee script
Plugin 'kchmck/vim-coffee-script'

" vue template
Plugin 'posva/vim-vue'
Plugin 'digitaltoad/vim-pug'

"ctrlp.vim
"Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'

"surround
Plugin 'tpope/vim-surround'

" Open itern in NREDTREE
Plugin 'mortonfox/nerdtree-iterm'

" move selected line
Plugin 'matze/vim-move'

" Go plugin
Plugin 'fatih/vim-go'


" All of your Plugins must be added before the following line
call vundle#end()            " required
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

autocmd VimEnter * NERDTree       "tự chạy NERDTree ngay
autocmd BufEnter * NERDTreeMirror "thêm folder tree vào
autocmd VimEnter * wincmd p       "thêm màu mè cho code
let g:NERDTreeWinSize=40
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None
let g:nerdtree_iterm_iterm_version = 3
set rtp+=/usr/local/opt/fzf
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=50
let g:ctrlp_user_command = 'fzf'
