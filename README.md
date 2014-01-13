# 概要 #

Emacsの設定ファイル群です．通常の人はdotfilesなどにまとめてしまい
`.zshrc`などどともに管理している人が多いと思いますが私はEmacsの設定をい
じることが多いので別にしました．

# 手順 #

一般的なLinuxには`wget`コマンドがありますのでそれを用いてインストール用の
シェルスクリプトをダウンロードします

    $ wget https://raw.github.com/jtwp470/dotemacs/master/setup.sh

あとは画面の指示に従いインストールしてください.

# していること #

本シェルスクリプトを利用して環境を構築すると`~/.emacs.d/`は
`~/.dotconfig/dotemacs`にリンクされます.

また外部リポジトリを参照しているため`git submodule init`と`git
submodule update`が行われ外部リポジトリを取り込みます
