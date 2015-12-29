# vim
Here is my vim conf (vimrc, bundle...) & a quick clone & install for when I get into a new machine
This install all my settings and plugin to ~/.custom_vim so that it doesn't screw with any other vim conf

# Install
    git clone git@github.com:silefort/vim.git ~/.custom_vim
    cd ~/.custom_vim
    ./install.sh

# Setup
Add this to you bashrc:
    
    alias v='vim -Nu ~/.custom_vim/vimrc'
