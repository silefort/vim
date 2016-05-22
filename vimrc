"""" Utils

"""""""""""""""""""
"""" Nagivation Options
"""""""""""""""""""

"" Set Mapleader
let mapleader = ","

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

"""""""""""""""""""
""" Display Options
"""""""""""""""""""

"" Syntaxic coloration
syntax on

"" Plugin related (used for NerdCommenter)
filetype plugin on

"" Show the current command (like 2dd)
set showcmd

"" Show the lines number
set number

"" Show relative number lines
set relativenumber

"" Show the matching paranthesis
set showmatch

"" Dark background
set background=dark

"" Highlight all search matches
set hlsearch

"" Incremental search
set incsearch

"" Clean the search highlights
nmap <silent> ,/ :nohlsearch<CR>

"" Only have cursorline in current Window
set cursorline
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

"" Informative Status Line
set statusline=%F%m%r%h%w\ [type=%Y]\ [%p%%]\ [len=%L]
set laststatus=2 " Always show the statusline on the 2nd last row

"" By default, vim thinks .md is Modula-2.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"""""""""""""""""""
""" Insert Options
"""""""""""""""""""

" insert spaces for tab (to insert real tabs use <C - V><tab>
set expandtab

" one tab = 4 spaces
set tabstop=4
set shiftwidth=4

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

"" Auto close parentheses, brackets and braces
"" imap { {}<left>
"" imap ( ()<left>
"" imap [ []<left>

"" Auto insert closing parantheses, brackets and braces
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

"" Allow backspacing over everything
set backspace=indent,eol,start

"" Make Y act like C and D (copy till the end of the line)
nmap Y y$
 
" Use ,d (or ,dd or ,dj or 20,dd) to delete a line without adding it to the
" yanked stack (also, in visual mode)
nnoremap <silent> <leader>d "_d
vnoremap <silent> <leader>d "_d

" s to split
nmap s i<CR><ESC>

"""""""""""""""""""
"""" Buffer Options
"""""""""""""""""""

"" You don't have to save a buffer before opening another
set hidden

"" Map write to leader s
map <Leader>s :w<cr>

"" Next Buffer
map <Leader>b :bn<cr>

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

"""""""""""""""""""
"""" Pathogen
"""""""""""""""""""

"" set the runtime path to my custom_vim dir
set rtp+=~/.custom_vim

execute pathogen#infect()

" any plugins you wish to install can be extracted to a subdirectory under
" ~/.vim/bundle, and they will be added to the 'runtimepath'
" for example:
" cd ~/.vim/bundle
" git clone https://github.com/scrooloose/nerdtree.git

"""""""""""""""""""
""" NERDTree
"""""""""""""""""""

" Remap Ctrl + n to open/close the NERDTree Tab
map <C-n> :NERDTreeToggle<CR>

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""""""""
""" Vim-Markdown
"""""""""""""""""""

"" Increase header
map <Leader>h+ :HeaderIncrease<CR>

"" Decrease header
map <Leader>h- :HeaderDecrease<CR>

"" Header
map <Leader>h I#<SPACE><ESC>$


"""""""""""""""""""
""" Lightline
"""""""""""""""""""
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ }
