"""""""""""""""""""
""" Main Options
"""""""""""""""""""

"" Set Mapleader
let mapleader = ","

"""""""""""""""""""
""" Display Options
"""""""""""""""""""

"" Syntaxic coloration
syntax on

"" Plugin related (used for NerdCommenter) (TODO)
filetype plugin on
filetype indent on

"" Show the lines number
set number

"" Show the matching paranthesis
set showmatch

"" Show the current command (like 2dd) (TODO)
set showcmd

"" Dark background
set background=light

"" Highlight all search matches
set hlsearch

"" Incremental search
set incsearch

"" Clean the search highlights
nmap <silent> <leader>/ :nohlsearch<CR>

"" Only have cursorline in current Window (TODO)
set cursorline
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

"" Informative Status Line
set statusline=%F%m%r%h%w\ [type=%Y]\ [%p%%]\ [len=%L]
set laststatus=2 " Always show the statusline on the 2nd last row

"" By default, vim thinks .md is Modula-2.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.txt set filetype=markdown

"" Add a bit extra margin to the left
set foldcolumn=1

"" Do not show mode (like -- INSERTION -- ) - it is already shown by the lightline plugin
set noshowmode

"" Toggle show Number ( for copy paste )
nnoremap <leader>n :set number!<CR>

"" Enable folding
set foldmethod=indent
set foldlevel=99

"""""""""""""""""""
""" Nagivation Options
"""""""""""""""""""

"" Disable Arrows for all mode
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"" jj to escape + leave the cursor
"" where it is (don't go one column back )
imap jj <ESC>l

"" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Create a new vertical split easily
nnoremap <leader>w <C-w>v<C-w>l

"" space for W
nnoremap <SPACE> W

"" Search and Focus
nnoremap n nzz
nnoremap N Nzz

"" Set 7 lines to the cursor when moving vertically using j/k
set so=7

"" Navigate around pargraphs with - and +
map + }j
map - 2{j

"""""""""""""""""""
""" Insert Options
"""""""""""""""""""

"" s to split the current line
nmap s i<CR><ESC>

" insert spaces for tab (to insert real tabs use <C - V><tab>
set expandtab

" one tab = 2 spaces
set tabstop=2
set shiftwidth=2

"" Not case sensitive for /search
set ignorecase

"" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"" Select all text in current buffer
map <Leader>a ggVG

"" Insert blank lines without going into insert mode
nmap t o<ESC>k
nmap T O<ESC>j

"" Allow backspacing over everything
set backspace=indent,eol,start

"" Make Y act like C and D (copy till the end of the line)
nmap Y y$

"""""""""""""""""""
"""" Buffer Options
"""""""""""""""""""

"" You don't have to save a buffer before opening another
set hidden

"" Map write to leader s
map <Leader>s :w<cr>

"" Move Around Buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>q :bd %<CR>

"""""""""""""""""""
"""" Tools Options
"""""""""""""""""""

"" Search & Replace word under cursor
:nnoremap <leader>; :%s/\<<C-r><C-w>\>//<Left>

"" Save as Sudo
cmap w!! w !sudo tee % >/dev/null

"" Edit my vimrc in a new vertical split
nnoremap <leader>ev <C-w><C-v><C-l>:e ~/.custom_vim/vimrc<cr>

"" Create an .un file with my undos
set undofile

" Toggle paste mode on and off:
map <leader>pp :setlocal paste!<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

"""""""""""""""""""
"""" Pathogen
"""""""""""""""""""

"" set the runtime path to my custom_vim dir
set rtp+=~/.custom_vim

execute pathogen#infect()

"""""""""""""""""""
""" Solarized
"""""""""""""""""""
colorscheme solarized

"""""""""""""""""""
""" NERDTree
"""""""""""""""""""

" Remap Ctrl + n to open/close the NERDTree Tab
map <C-n> :NERDTreeToggle<CR>

"" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeWinPos="right"

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeIgnore=['\.swp$', '\~$'] "ignore files in NERDTree


"""""""""""""""""""
""" Lightline
"""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],['fugitive'],['readonly', 'absolutepath', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'],['filetype'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"RO":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"Modified":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': '|', 'right': ' ' }
      \ }

"""""""""""""""""""
""" Vim Indent Guides
"""""""""""""""""""
"" Show indent guides by default
let g:indent_guides_enable_on_vim_startup = 1

"""""""""""""""""""
""" Mini Buffer Explorer
"""""""""""""""""""
"" Display the Mini Buffer Explorer on the Left
let g:miniBufExplVSplit = 20   " column width in chars
let g:miniBufExplorerAutoStart = 0
let g:miniBufExplShowBufNumbers = 0
nnoremap <C-b> :MBEToggle<CR>:MBEFocus<CR>

"""""""""""""""""""
""" SimplyFold
"""""""""""""""""""
let g:SimpylFold_docstring_preview=1

"""""""""""""""""""
""" Python Specifics
"""""""""""""""""""
" Follow PEP8 Indentation

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"""""""""""""""""""
""" Hard Time
"""""""""""""""""""
let g:hardtime_default_on = 1
nnoremap <leader>h :HardTimeToggle<CR>
