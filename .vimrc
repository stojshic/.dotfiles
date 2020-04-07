set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================

Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'

" ===================
" end of plugins
" ===================
call vundle#end()               " required
filetype plugin indent on       " required
set clipboard+=unnamedplus
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
let g:lightline = {
  \ 'colorscheme': 'dracula'
\}
set laststatus=2
set noshowmode
map <C-n> :NERDTreeToggle<CR>
