if &compatible
  set nocompatible " Disable compatibility to old-time vi
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('airblade/vim-gitgutter')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif
"------------------------------------------------------------------------------
""Plugin install packages
"------------------------------------------------------------------------------
call dein#add('scrooloose/nerdtree',
      \{'on_cmd': 'NERDTreeToggle'})

call dein#add('justmao945/vim-clang',
      \{'on_ft': ['c', 'cpp']})

call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')





filetype plugin indent on
syntax enable

set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style

set number relativenumber   " add line numbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" color scheme
color dracula
" Be sure the colors are working
"let g:default-terminal "xterm-256color"

" Run python script using F9
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Activate deoplete at startup
let g:deoplete#enable_at_startup = 1

" map leader
let g:mapleader = ','

" Toggle spelling
nnoremap <leader>s : set invspell<CR>

set scrolloff=3 " keep three lines between the cursor and the edge of the screen

" undos configuration
set undodir=~/.vim/undodir
set undofile  " save undos
set undolevels=10000  " maximum number of changes that can be undone
set undoreload=100000  " maximum number lines to save for undo on a buffer reload

" easy split movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
