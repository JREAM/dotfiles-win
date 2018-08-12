set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" << Colors >>
" ------------
Plugin 'jnurmine/zenburn'


" << Language >>
" --------------
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'posva/vim-vue'

" <<Utils >>
" ----------
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'valloric/matchtagalways'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on


