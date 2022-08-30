"======================================================================="
"									                                    "
"			        CHRISTOFFER KARLSSON VIMRC			                "
"									                                    "
"======================================================================="

""""""""""""""""""""""""""""""""SETTINGS"""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""---GLOBAL SETTINGS---"""
set number
set nocompatible
set incsearch
set t_Co=256
set scrolloff=8
syntax enable
filetype plugin on

"""---COMMANDS---"""

command! Reload execute "source ~/.vimrc"
autocmd! bufwritepost .vimrc source %

"""---ARROW KEY : DISABLE---"""

inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

"""---SLEEP KEYBIND : DISABLE---"""

noremap <C-s> <nop>

""""""""""""""""""""""""""""""""PLUGINS""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""---PLUGIN LIST---"""

call plug#begin()

Plug 'dense-analysis/ale'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-surround'

call plug#end()

"""---PLUGIN SETTINGS---"""

let g:ale_linters = {'python': ['flake8']}

""""""""""""""""""""""""""""""FILE SEARCH""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

"""""""""""""""""""""""""""""TAG JUMPING"""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" May need to install ctags, so wait



"	AUTOCOMPLETE

"	FILE BROWSING

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\|\s\s\)\zs\.\S\+'

""""""""""""""""""""""""""""""KEYBINDS"""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""---GENERAL SETTINGS---"""

"	Set <Leader> key

let mapleader = ","

"	Quicksave binding

noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"	Quick quit binding

noremap <Leader>e :quit<CR>	"Quit current window
noremap <Leader>E :quit<CR>	"Quit all windows

"	Tab & Space smoothing

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smartindent

"   Remap to leave insert mode

map! ;; <Esc>

"   Quick Find Key
     
noremap F :find 
