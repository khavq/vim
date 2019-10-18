" Use mouse
if has('mouse')
    set mouse=a
endif

" copy vim ra ngoai clipboard
set clipboard=unnamedplus

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

"show line number
set nu

"auto update file while changed by another program
set autoread
set autowrite
au CursorHold * checktime
" set indent
" set autoindent
" set si "smart indent

" turn on syntax
syntax on
autocmd BufWritePre * %s/\s\+$//e
