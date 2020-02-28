if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=/home/matteie/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/matteie/.local/share/dein')
  call dein#begin('/home/matteie/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/matteie/.local/share/dein/repos/github.com/Shougo/dein.vim')

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

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" load configuration for markdown
so /home/matteie/.config/nvim/markdown_profile.vim
