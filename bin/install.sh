#!/usr/bin/env bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.vim/colors
ln -s ~/.vim/plugged/molokai/colors/molokai.vim colors/molokai.vim


vim -u NONE -c "helptags surround/doc" -c q
