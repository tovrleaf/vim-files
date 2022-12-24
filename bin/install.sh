#!/usr/bin/env bash

cd "$HOME/.vim"

for f in autoload \
    bundle \
    colors \
    plugin \
    ; do
    mkdir "$f" 2>/dev/null || true
done

cd bundle

for r in \
    clojure-emacs/cider-nrepl \
    guns/vim-clojure-highlight \
    guns/vim-clojure-static \
    jupyter-vim/jupyter-vim \
    kien/ctrlp.vim \
    kien/rainbow_parentheses.vim \
    mfukar/robotframework-vim \
    pangloss/vim-javascript \
    powerline/fonts \
    tomasr/molokai \
    tpope/vim-classpath \
    tpope/vim-fireplace \
    tpope/vim-pathogen \
    tpope/vim-surround \
    vim-airline/vim-airline \
    vim-airline/vim-airline-themes \
    ; do
    d=`echo $r | sed 's|^.*/||'`
    echo "[$r]"
    test -d $d && pushd $d >/dev/null && git pull &&  popd >/dev/null
    ! test -d $d &&  git clone https://github.com/$r.git
done

vim -u NONE -c "helptags surround/doc" -c q
