call plug#begin('~/AppData/Local/nvim-data/site/bundle')

Plug 'preservim/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'alvan/vim-closetag'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
"Plug 'briones-gabriel/darcula-solid.nvim'
"Plug 'rktjmp/lush.nvim'
"Plug 'bluz71/vim-moonfly-colors'

Plug "zhou13/vim-easyescape"

Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'} " autocomplete
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'pangloss/vim-javascript'
Plug 'mgechev/vim-jsx'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
let g:closetag_filenames = '*.html,*.js,*.jsx'
let g:closetag_emptyTags_caseSensitive = 1

" fzf
" NOTE: ctrl t: new tab
"       ctrl v: vertical split
"       ctrl x: horizontal split
let g:fzf_preview_window = []
let g:fzf_layout = { 'down': '40%' }

" Lighline
let g:lightline = {
    \ 'colorscheme': 'gruvbox',
  \ }

" Run prettier asynchronously before saving
let g:prettier#autoformat=0
let g:prettier#config#single_quote = 'true'
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync

" Theme
syntax on
set background=dark
set termguicolors

colorscheme gruvbox
let g:gruvbox_contrast_dark= 'soft'

" Autocomplete
set completeopt=menuone,noinsert,noselect

" Path to lspconfig
luafile ~/config/lspconfig.lua
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set noswapfile

" Search as characters are entered
set incsearch 

" Highlights matching searcher
set hlsearch 

" Line numbers
set number

set noruler

" The number of spaces to use for each indent  
set tabstop=2
set shiftwidth=2

" Indent using spaces instead of tabs
set expandtab 

" Auto-indentation
set ai

" Keep the error column always visible (jumpy when linter runs on input)
set signcolumn=yes

" Set the working directory as specific to the opened file.
"set autochdir 

"set guicursor=i:block

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jj <Esc>

" Switch tabs
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>

" Switch buffers
noremap <silent> <c-k> :wincmd k<CR>
noremap <silent> <c-j> :wincmd j<CR>
noremap <silent> <c-h> :wincmd h<CR>
noremap <silent> <c-l> :wincmd l<CR>

" Ctrl + p to search
noremap <C-p> :Files<Cr>
