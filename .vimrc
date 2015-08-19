filetype off " Required from vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tomtom/tcomment_vim'
Bundle 'crooloose/nerdtree'
Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'

set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax enable

let g:solarized_termcolors=256
set background=light
colorscheme solarized

set number " Show line number.

set hlsearch " Highlight search terms.

set guioptions-=r " Remove scrollbar.

set lines=999 columns=9999 " Maximize vim.

set laststatus=2 " Show status line.

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> " <C-l> clears and redraws the screen. This mapping builds on top of the usual behavior.

set wildmenu " Enable enhanced command-line completion.

set spell " Turns on spell checking.

set softtabstop=4 " Number of spaces that a <Tab> counts for while performing editing operations.

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Mappings

" " Window Management Mappings

"" Move the cursor to the window left of the current one
noremap <silent> ,h :wincmd h<cr>

" Move the cursor to the window below the current one
noremap <silent> ,j :wincmd j<cr>

" " Move the cursor to the window above the current one
noremap <silent> ,k :wincmd k<cr>

"" Move the cursor to the window right of the current one
noremap <silent> ,l :wincmd l<cr>

" Close the window below this one
noremap <silent> ,cj :wincmd j<cr>:close<cr>

" " Close the window above this one
noremap <silent> ,ck :wincmd k<cr>:close<cr>

"" Close the window to the left of this one
noremap <silent> ,ch :wincmd h<cr>:close<cr>

" Close the window to the right of this one
noremap <silent> ,cl :wincmd l<cr>:close<cr>

" " Close the current window
noremap <silent> ,cc :close<cr>

"" Move the current window to the right of the main Vim window
noremap <silent> ,ml <C-W>L

" Move the current window to the top of the main Vim window
noremap <silent> ,mk <C-W>K

" " Move the current window to the left of the main Vim window
noremap <silent> ,mh <C-W>H

"" Move the current window to the bottom of the main Vim window
noremap <silent> ,mj <C-W>J"

" Give a shortcut key to NERD Tree
map <M-t> :CtrlP<CR>
map <M-n> :NERDtree<CR>

" vim-session options
" saves editing session before quitting Vim
let g:session_autosave='yes'

"restore default editing session
let g:session_autoload='yes'
