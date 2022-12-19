set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'file:///~/.vim/bundle/Vundle.vim'
Plugin 'file:///~/.vim/bundle/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'file:///~/.vim/bundle/ale'

call vundle#end()

" python lint stuff
let g:ale_linters = {'python': ['pylint', 'flake8']}
let g:ale_python_flake8_options = '--max-line-length=120'

" get powerline to work
set laststatus=2

set nu

" default autocommand used for all files
au BufNewFile,BufRead *
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=120 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix |
  \ set spell |
  
 " only want two spaces for yaml files
 au BufNewFile,BufRead *.yaml,*.yml
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set shiftwidth=2
  
 " underline spelling mistakes
 hi clear SpellBad
 hi SpellBad cterm=underline
 hi SpellBad gui=undercurl
 
 " highlight trailing spaces
 au BufRead,BufNewFile * match ErrorMsg /\s\+$/
 
 let python_highlight_all=1
 syntax on
