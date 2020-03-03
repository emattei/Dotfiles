"""""""""""""""""""""""""""START DEIN CONF"""""""""""""""""""""""""""""""""""
" This is part of the configuration generated by
" dein installer

if &compatible
    set nocompatible
endif

" Required:
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.local/share/dein')
    call dein#begin('~/.local/share/dein')

  " Let dein manage dein
  " Required:
    call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Solarized colorscheme
    call dein#add('iCyMind/NeoSolarized')
  " Airline status bar
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
  " Show the buffers in vim
    call dein#add('bling/vim-bufferline')
  " Add support for tmux
    call dein#add('edkolev/tmuxline.vim')
  " Show indent lines
    call dein#add('Yggdroot/indentLine')
  " View csv in vim
    call dein#add('chrisbra/csv.vim', {
                \ 'on_ft' : ['csv', 'tsv']})
  " View git information
    call dein#add('airblade/vim-gitgutter')
  " Comment multiple lines
    call dein#add('scrooloose/nerdcommenter')
  " Modify multiple lines at the same time
    call dein#add('terryma/vim-multiple-cursors', {
                \ 'on_map' : { 'n' : ['<C-n>', '<C-p>'], 'x' : '<C-n>'}})
  " Align text in columns
    call dein#add('godlygeek/tabular', {
                \'on_cmd' : [ 'Tab', 'Tabularize' ] , 'augroup' : 'tabular' })
  " Swap two words or two line in one motion
    call dein#add('tommcdo/vim-exchange', {
                \'on_map' : {'n' : 'cx', 'x' : 'X' }})
  " Repeat command. It is a dependency of the vim-surround plugin
    call dein#add('tpope/vim-repeat', {
                \'on_map' : '.'}) 
  " Add, remove or change parenthesis
    call dein#add('tpope/vim-surround', {
                \'on_map': {'n' : ['cs', 'ds', 'ys'], 'x' : 'S'},
                \'depends' : 'vim-repeat'})
  " Move chunks of text around
    call dein#add('zirrostig/vim-schlepp', {
                \'on_map' :  ['<Plug>SchleppDown',
                \             '<Plug>SchleppUp',
                \             '<Plug>SchleppLeft', 
                \             '<Plug>SchleppRight']}) 

  " Show preview for markdown files
    call dein#add('iamcco/markdown-preview.nvim', {
    \ 'on_ft': ['markdown', 'pandoc.markdown', 'rmd', 'md'],
    \ 'build': 'sh -c "cd app & yarn install"'
    \ })


  " Required:
    call dein#end()
    call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif
"""""""""""""""""""""""""""END DEIN CONF"""""""""""""""""""""""""""""""""""

" Load MARKDOWN configuration
so ~/.config/nvim/markdown_profile.vim
" Load NEOSOLARIZED configuration
so ~/.config/nvim/neosolarized_profile.vim
" Load AIRLINE configuration
so ~/.config/nvim/airline_profile.vim
" Load INDENTLINE configuration
so ~/.config/nvim/indentLine_profile.vim
" Load TABULARIZE configuration
so ~/.config/nvim/tabularize_profile.vim
" Load SCHLEPP configuration
so ~/.config/nvim/schlepp_profile.vim

" Required:
filetype plugin indent on
syntax enable

" No tabs, use 4 spaces instead:
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set termguicolors           " Support for true colors
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent new line as the line just typed
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style

set number relativenumber   " add line numbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Run python script using F9
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" map leader
let g:mapleader = ','

" Toggle spelling
nnoremap <leader>s : set invspell<CR>

" keep three lines between the cursor and the edge of the screen
set scrolloff=3 

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

" Show invisible characters
set list
set listchars=tab:▸\ ,trail:·,eol:¬,extends:→,precedes:←,nbsp:･
set showbreak=↪\

" Remap to move across buffers
noremap <M-N> :bnext<CR>
noremap <M-P> :bprev<CR>
