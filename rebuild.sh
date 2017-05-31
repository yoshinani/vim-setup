#!/bin/sh
# dein.vimの導入
mkdir ~/.cache/dein && cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein 
echo 'vim-setup rebuild.sh done'
