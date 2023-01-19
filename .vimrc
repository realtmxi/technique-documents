set tabstop=4
set shiftwidth=4
set expandtab
set number
set mouse=a
set smartindent
syntax on
filetype on

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'Yggdroot/indentLine'
  Plug 'vim-airline/vim-airline'
call plug#end()

"  color-theme tokyonight
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

"NERDTree Toggle
let mapleader = ","
nnoremap <leader>o  :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
