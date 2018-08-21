call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'

"Fancy Icons (requires nerd-font install)
Plug 'ryanoasis/vim-devicons'

" Colour schemes
Plug 'morhetz/gruvbox'
Plug 'xero/sourcerer.vim'
Plug 'romainl/Apprentice'
Plug 'mhinz/vim-janah'

" Language support
Plug 'w0rp/ale'
Plug 'OmniSharp/omnisharp-vim'

" Initialize plugin system
call plug#end()

syntax enable
set background=dark
colorscheme gruvbox

"colorscheme sourcerer

"colorscheme apprentice

set number
set showcmd
set cursorline
set showmatch

set spell spelllang=en_gb

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent

set updatetime=100

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set encoding=utf8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

"let NERDTreeDirArrowExpandable = " "
"let NERDTreeDirArrowCollapsible = " "
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:ale_completion_enabled = 1

