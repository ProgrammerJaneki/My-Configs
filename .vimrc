"   ██    ██ ██ ███    ███ ██████   ██████
"   ██    ██ ██ ████  ████ ██   ██ ██
"   ██    ██ ██ ██ ████ ██ ██████  ██
"    ██  ██  ██ ██  ██  ██ ██   ██ ██
"██   ████   ██ ██      ██ ██   ██  ██████

"---------GENERAL SETTINGS------------

"Set compatibility to Vim only.
set nocompatible
set nolist
set rnu
set encoding=UTF-8
" PLUGS
call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Basic
syntax on
set number relativenumber
set wildmode=longest,list,full
set splitbelow splitright
" MAPPINGS
map gy :Goyo \| set linebreak<CR>
map sp :setlocal spell! spelllang=en_us<CR>
map nt :NERDTreeToggle<CR>


" let
let g:airline_theme='violet'
let g:airline_powerline_fonts=1

" COLOR SCHEME & TRANSPARENCY
colorscheme onedark
let g:onedark_termcolors=256
hi Normal guibg=NONE ctermbg=NONE

" GOYO LEAVE
function! s:goyo_leave()
         hi Normal guibg=NONE ctermbg=NONE
endfunction
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Copy & Paste
vnoremap <C-c> "+y
map <C-p> "+p

" Tab Settings
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set wildmode=longest,list,full
