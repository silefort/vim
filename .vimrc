"""" Utils
"" Syntaxic coloration
syntax on

"" Show the current command (like 2dd)
set showcmd

"" Show the lines number
set number

"" dark background
set background=dark

"" Not case sensitive for /search
set ignorecase

"""" Pathogen
execute pathogen#infect()

" any plugins you wish to install can be extracted to a subdirectory under
" ~/.vim/bundle, and they will be added to the 'runtimepath'
" for example:
" cd ~/.vim/bundle
" git clone https://github.com/scrooloose/nerdtree.git

""" NERDTree
" Remap Ctrl + n to open/close the NERDTree Tab
map <C-n> :NERDTreeToggle<CR>

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
