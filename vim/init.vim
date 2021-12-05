call plug#begin('~/AppData/Local/nvim-data/site/bundle')
Plug 'preservim/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'honza/vim-snippets'
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

"" Close tag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_emptyTags_caseSensitive = 1

" fzf
let g:fzf_preview_window = []
let g:fzf_layout = { 'down': '40%' }

" Theme
syntax on
set background=dark

" format
set noswapfile
set incsearch "search as characters are entered
set hlsearch "highlights matching searcher
set number
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set guicursor=i:block
set autochdir "set the working directory as specific to the opened file.

" switch tabs
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>

" switch buffers
noremap <silent> <c-k> :wincmd k<CR>
noremap <silent> <c-j> :wincmd j<CR>
noremap <silent> <c-h> :wincmd h<CR>
noremap <silent> <c-l> :wincmd l<CR>
