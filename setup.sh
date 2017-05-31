#!/bin/sh
# vimのディレクトリ構造を構築
mkdir -p ~/vim/autoload/{init/.gitkeep,languages/.gitkeep,plugins/.gitkeep}
# .vimrcをコピー
cp ~/vim-setup/.vimrc ~/vim/.vimrc
# plugin設定ファイルを作成
touch ~/vim/autoload/init/plugin.vim
# dein.vimの導入
mkdir ~/.cache/dein && cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# dein.vimの実行結果をplugin.vimに整形して書き込む
trap 'rm "$TMP"' EXIT
TMP=`mktemp` 
sh ./installer.sh ~/.cache/dein > $TMP
sed -n -e "/dein Scripts/,/End dein Scripts/p" $TMP > ~/vim/autoload/init/plugin.vim
echo 'vim-setup setup.sh done'
