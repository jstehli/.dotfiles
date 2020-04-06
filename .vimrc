" .vimrc for Jonas Stehli
"
" Maintainer:	Jonas Stehli <jonas.stehli@jsounds.ch>
" Last change:	2020 Apr 6
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc


" * * * * * * * * * * * * * * * * * * * *
" start 'vim-plug' plug-in manager
" use :PlugInstall inside vim to activate
call plug#begin('~/.vim/plugged')

" colors
Plug 'tomasr/molokai'    " molokai
Plug 'sjl/badwolf'       " badwolf

" end of vim-plug block
call plug#end()
" * * * * * * * * * * * * * * * * * * * *


" make sure current features are enabled
set nocompatible

" color scheme
colorscheme badwolf

" syntax highlighting
syntax enable

" search down into subdirectories
" provides tab-completion for all file related tasks
" reference: youtube.com/watch?v=XA2WjJbmmoM&t=408s
set path+=**

" tab behaviour
set tabstop=4  " # of spaces used for displaying tab
set softtabstop=4  " # of spaces used when typing tab
set expandtab  " use spaces instead of tab

" ui config
set number  " show line numbers
set showcmd  " shows last entered command at the bottom right of vim
set cursorline  " highlight current line
" filetype indent on  " load filetype-specific indent files
set wildmenu  " visual autocomplete for command menu
set lazyredraw  " only redraw when we need to
set showmatch  " highlight matching {[()]}
set list  " show list characters as defined by 'listchars' below
set listchars:tab=>-,trail=·,extends:>,precedes:<

" Get off my lawn - helpful when learning Vim :)
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

