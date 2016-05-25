#!/bin/sh
if [ -e ~/.vimrc ] ; then
  rm ~/.vimrc
fi
ln -s ~/.vim/vimrc ~/.vimrc
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein
rm installer.sh

