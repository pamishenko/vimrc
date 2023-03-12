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
Plug 'phanviet/vim-monokai-pro'
Plug 'udalov/kotlin-vim'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
set mouse=a

syntax on
let g:mapleader='.'
let g:termdebugger="rust-gdb"
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
