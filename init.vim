call plug#begin('~/AppData/Local/nvim-data/site/bundle')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'

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
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

syntax on
set background=dark

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

highlight Comment ctermfg=71
highlight LineNr ctermfg=142
highlight Statement ctermfg=142
highlight PreProc ctermfg=142
highlight Type ctermfg=142
highlight Constant ctermfg=37
highlight Normal ctermfg=252
highlight Special ctermfg=37
highlight Identifier ctermfg=37

"This is in the Statement
highlight Operator ctermfg=252

"This is in the Identifier
highlight Function ctermfg=252

"This is in the Contant
highlight String ctermfg=130
highlight Number ctermfg=141
highlight Boolean ctermfg=130

:imap jj <Esc>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
