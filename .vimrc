""""""""""""""""""""""""""""""""""""""""""""""""""
" Show number relative to the current line
set number relativenumber

" Set number depends on the mode:
" Normal mode : relative to current line
" Insert mode : absolute line
augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FOcusList,InsertEnter   * set norelativenumber
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""
" Set tab to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Use spaces for tab
set expandtab

" tab should be smart
set smarttab

" Use auto indentation
set autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <Up> :echo "Stupid Move!" <CR>
noremap <Left> :echo "Stupid Move!" <CR>
noremap <Right> :echo "Stupid Move!" <CR>
noremap <Down> :echo "Stupid Move!" <CR>

inoremap <Up> :echo "Stupid Move!" <CR>
inoremap <Left> :echo "Stupid Move!" <CR>
inoremap <Right> :echo "Stupid Move!" <CR>
inoremap <Down> :echo "Stupid Move!" <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight search
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
filetype plugin indent on
set hidden
set backspace=indent,eol,start
