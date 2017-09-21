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
    tpope/vim-pathogen \
    clojure-emacs/cider-nrepl \
    guns/vim-clojure-highlight \
    guns/vim-clojure-static \
    kien/rainbow_parentheses.vim \
    mfukar/robotframework-vim \
    tpope/vim-fireplace \
    tomasr/molokai \
    tpope/vim-classpath \
    vim-scripts/LustyJuggler \
    vim-airline/vim-airline \
    vim-airline/vim-airline-themes \
    powerline/fonts \
    kien/ctrlp.vim \
    pangloss/vim-javascript \
    ; do
    d=`echo $r | sed 's|^.*/||'`
    echo "[$r]"
    test -d $d && pushd $d >/dev/null && git pull &&  popd >/dev/null
    ! test -d $d &&  git clone git@github.com:$r.git
done
