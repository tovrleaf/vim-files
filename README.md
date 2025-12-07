#!/usr/bin/env bash

git clone git://github.com/tovrleaf/vim-files.git ~/.config/vim
ln -s ~/.config/vim ~/.vim

echo source ~/.vim/vimrc.vim >> ~/.vimrc
echo source ~/.vim/gvimrc.vim >> ~/.gvimrc

. ~/.vim/bin/install.sh

# Neovim

ln -s ~/.vim ~/.config/nvim

# Fonts

./bundle/fonts/install.sh
