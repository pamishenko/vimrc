#!/bin/bash

Pluginstall https://github.com/junegunn/vim-plug/:
       curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .vimrc ~

brew install cmake python go nodejs

cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
