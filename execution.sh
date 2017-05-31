#!/bin/sh
# シンボリックリンクを作成
cd ~/.vim && ln -s ~/vim/autoload
cd ~/ && ln -s ~/vim/.vimrc
echo 'vim-setup execution.sh done'
