# vim-setup
- 新しくvimの環境を構築するセットアップ用のスクリプト
- `dein.vim` の利用を想定しています

# Howto

- 初回起動時に以下を実行
    - 必要なDirectory構成を構築します
    - `.vimrc` は `autoload` の `*.vim` を読み込むようにしています

```
cd ~/ && git clone git@github.com:yutanakano/vim.git
sh ~/vim-setup/setup.sh
```

# pluginの導入方法

- [※](https://teratail.com/questions/63742) pluginの追加は `if dein#load_state('/Users/aizawasatoshi/.vim/bundle')` のスコープ外に書きます
    - `~/vim/autoload/plugins/plugin.vim`

- pluginのインストール

```
:call dein#install()
```

- pluginのアップデート

```
:call dein#update()
```

- 現在インストールされているプラグイン一覧を確認
    - Uniteプラグインが必要

```
:Unite dein
```

# 構成

|Directory|ファイル名|用途|
|:--:|:--:|:--:|
|-|.vimrc|AutoLoader|
|autoload|-|自動読み込みされるディレクトリ|
|autoload/init|-|各設定ファイル|
|autoload/languages|-|言語別設定ファイル|
|autoload/plugins|-|プラグイン別設定ファイル|
