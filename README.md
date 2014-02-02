## 概要 ##
どうみてもEmacsの設定だよね

## インストール手順 ##

一般的なLinuxにある`wget`コマンドを用いて以下のシェルスクリプトをダウンロードします

```
$ wget https://raw.github.com/jtwp470/dotemacs/master/setup.sh
```

なおこのシェルスクリプトを用いると`$HOME/.dotconfig/dotemacs`に本体がインストールされます．さらに`$HOME/.emacs.d`がすでに存在する場合は`.emacs_bk`として元のフォルダをリネームします

また外部リポジトリを参照しているため`git submodule init`と`git
submodule update`が行われ外部リポジトリを取り込みます

## Pythonユーザーについて ##
Pythonの補完機能を用いる場合は以下のコマンドをインストール後に実行してください

```
$ sudo pip install epc jedi
```

