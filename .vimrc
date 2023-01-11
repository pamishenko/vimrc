call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'
Plug 'ggreer/the_silver_searcher'
Plug 'ycm-core/YouCompleteMe'
Plug 'phanviet/vim-monokai-pro'
Plug 'udalov/kotlin-vim'
call plug#end()

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set mouse=a

syntax on
let g:mapleader='.'
set termguicolors
"colorscheme monokai_pro
colorscheme gruvbox
set encoding=utf-8
set background=dark
set number
set hlsearch
set incsearch
set tabstop=4
set smartindent
set shiftwidth=4
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:·,nbsp:␣
set list
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
autocmd VimEnter * NERDTree | wincmd p
" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
"mappings

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
