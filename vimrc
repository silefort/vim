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

"" jj to escape
imap jj <ESC>

"" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Use arrow key to change buffer
noremap <left> :bp<CR>
noremap <right> :bn<CR>

"""""""""""""""""""
""" Display Options
"""""""""""""""""""

"" Syntaxic coloration
syntax on

"" Show the current command (like 2dd)
set showcmd

"" Show the lines number
set number

"" dark background
set background=dark

"" Highlight all search matches
set hlsearch

"" Only have cursorline in current Window
set cursorline
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

"" Informative Status Line
set statusline=%F%m%r%h%w\ [type=%Y]\ [%p%%]\ [len=%L]
set laststatus=2 " Always show the statusline on the 2nd last row

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
 
"""""""""""""""""""
"""" Buffer Options
"""""""""""""""""""

"" Map write to leader s
map <Leader>s :w<cr>

"" Next Buffer
map <Leader>b :bn<cr>

"""""""""""""""""""
"""" Tools Options
"""""""""""""""""""

"" Search & Replace word under cursor
:nnoremap <leader>; :%s/\<<C-r><C-w>\>//<Left>


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
