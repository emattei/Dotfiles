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

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
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

" Load configuration for markdown
so ~/.config/nvim/markdown_profile.vim

" Required:
filetype plugin indent on
syntax enable

" No tabs, use 4 spaces instead:
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

let g:indentLine_color_term = 239
let g:indentLine_char = '┊'

