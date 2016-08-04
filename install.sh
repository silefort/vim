#!/bin/sh

## Create directories
mkdir ~/.custom_vim/autoload
mkdir ~/.custom_vim/bundle

## Install Pathogen
curl -LSso ~/.custom_vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Clone all the necessary plugins 
cd ~/.custom_vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/christoomey/vim-tmux-navigator.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/plasticboy/vim-markdown.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/godlygeek/tabular.git
git clone https://github.com/itchyny/lightline.vim.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/xolox/vim-notes.git
git clone https://github.com/xolox/vim-misc.git
