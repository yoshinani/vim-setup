#!/bin/sh
# vimのディレクトリ構造を構築
mkdir -p ~/vim/autoload/{init/.gitkeep,languages/.gitkeep,plugins/.gitkeep}
# 設定ファイルを作成
touch ~/vim/.vimrc
touch ~/vim/autoload/plugins/plugin.vim
# dein.vimの導入
mkdir ~/.vim/dein && cd ~/.vim/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
trap 'rm "$TMP"' EXIT
TMP=`mktemp` 
sh ./installer.sh ~/.vim/dein > $TMP
sed -n -e "/dein Scripts/,/End dein Scripts/p" $TMP > ~/vim/autoload/plugins/plugin.vim
echo 'done'
