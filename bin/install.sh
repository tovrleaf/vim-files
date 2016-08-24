#!/usr/bin/env bash

set -eu

cd $HOME

for f in autoload \
    bundle \
    colors \
    plugin \
    ; do
    ln -s ~/.vim-git/$f ~/.vim/ 2> /dev/null || true
done

cd .vim-git/bundle

for r in \
    clojure-emacs/cider-nrepl \
    guns/vim-clojure-highlight \
    guns/vim-clojure-static \
    kien/rainbow_parentheses.vim \
    mfukar/robotframework-vim \
    tpope/vim-fireplace \
    tomasr/molokai \
    tpope/vim-classpath \
    vim-scripts/LustyExplorer \
    vim-scripts/LustyJuggler \
    vim-scripts/LustyJuggler \
    ; do
    d=`echo $r | sed 's|^.*/||'`
    echo "[$r]"
    test -d $d && pushd $d > /dev/null && git pull &&  popd > /dev/null
    ! test -d $d &&  git clone git@github.com:$r.git
done

