"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ninno/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ninno/.vim')
  call dein#begin('/home/ninno/.vim')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ninno/.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('rakr/vim-one')

  " You can specify revision/branch/tag.

  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

    " Quality-of-life fixes
  call dein#add('blueyed/vim-qf_resize')
  call dein#add('romainl/vim-cool')
  call dein#add('osyo-manga/vim-over')
  call dein#add('drzel/vim-in-proportion')

  " Status line
  " call dein#add('itchyny/lightline.vim')
  call dein#add('vim-airline/vim-airline')

  call dein#add('scrooloose/nerdtree')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

colorscheme one
set background=dark

set nu

let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
