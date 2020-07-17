call plug#begin('~/AppData/Local/nvim-data/site/bundle')

Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'

call plug#end()

"NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=1

"Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

syntax on
set incsearch "search as characters are entered
set hlsearch "highlights matching searcher
"set nu rnu
set number
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
"set textwidth=0 wrapmargin=0

highlight LineNr ctermfg=187
highlight Comment ctermfg=30
highlight Statement ctermfg=187
"highlight Constant ctermfg=140
"highlight Type ctermfg=100

:imap jj <Esc>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
