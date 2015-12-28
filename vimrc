"""" Utils

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


"""""""""""""""""""
"""" Nagivation Options
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

"" Set Mapleader
let mapleader = ","

"""""""""""""""""""
"""" Nagivation Options
"""""""""""""""""""

"" Map write to leader s
map <Leader>s :w<cr>

"""""""""""""""""""
"""" Pathogen
"""""""""""""""""""

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
