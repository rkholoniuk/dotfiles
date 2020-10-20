syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" FuzzyFinder (для быстрого поиска)
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" NERDTree - быстрый просмотр файлов
Plug 'preservim/nerdtree'

" Дополнения для NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'

" ranger vim integration
Plug 'francoiscabrol/ranger.vim'
" builtin terminal
Plug 'voldikss/vim-floaterm'

" file icons
Plug 'ryanoasis/vim-devicons'

" Темы
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'
" Линия статуса
Plug 'itchyny/lightline.vim'

call plug#end()

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

" Тема для **NeoVim**
syntax on
colorscheme iceberg
" === coc.nvim === "
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Линия статуса: конфигурация
set noshowmode " Табличка --INSERT-- больше не выводится на экран
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'iceberg',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
