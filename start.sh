#!/bin/bash
current_os=$(uname -s)

# Установка exuberant-ctags в зависимости от операционной системы
if [[ $current_os == "Linux" ]]; then
  sudo apt-get update
  sudo apt-get install exuberant-ctags
elif [[ $current_os == "Darwin" ]]; then
  brew install ctags
elif [[ $current_os == "Windows" ]]; then
  echo "Установка exuberant-ctags на Windows не поддерживается."
else
  echo "Операционная система $current_os не поддерживается."
fi

Pluginstall https://github.com/junegunn/vim-plug/:
       curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .vimrc ~

brew install cmake python go nodejs

cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
