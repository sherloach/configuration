call plug#begin('~/AppData/Local/nvim-data/site/bundle')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'
"Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'

" For Syntax
Plug 'pangloss/vim-javascript'
Plug 'juvenn/mustache.vim'
Plug 'briancollins/vim-jst'

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
let g:NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" COC
set updatetime=300
nmap <silent> gd <Plug>(coc-definition)

" Close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_emptyTags_caseSensitive = 1

" Theme
syntax on
set background=dark
set termguicolors
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" Lightline
let g:lightline = {
\ 'colorscheme': 'gruvbox',
\ }

hi Normal ctermbg=None
hi Comment guifg=#689d6a
"hi LineNr guifg=#b8bb26
"hi PMenu ctermfg=254 ctermbg=236
"hi PmenuSel ctermbg=31 ctermfg=16

"""" Another
set incsearch "search as characters are entered
set hlsearch "highlights matching searcher
set number
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set noswapfile

:imap jj <Esc>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"Edit in pangloss/vim-javascript:
"HiLink jsGlobalObjects Comment
"HiLink jsFunction Special
"HiLink jsOperatorKeyword Statement
