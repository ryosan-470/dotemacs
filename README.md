# dotemacs
[![Build Status](https://img.shields.io/travis/jtwp470/dotemacs.svg?style=flat-square)](https://travis-ci.org/jtwp470/dotemacs)
[![License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)]()
[![platform](https://img.shields.io/badge/platform-OS%20X%20%7C%20Linux-808080.svg?style=flat-square)]()

My configuration for Emacs.

I am Emacser. I cannot use Vim. The Emacs is the best editor all over the world!!

## How to setup

```sh
$ curl -sL https://dotemacs.jtwp470.net > setup.sh && bash setup.sh all
```

## Requirements

* Emacs 24.4 or higher is recommended.
* Running test below emacs versions.
    * <del>Emacs 23</del> <strong>No longer supported because package.el does NOT support.</strong>
    * Emacs 24
    * Emacs Snapshot
* Ricty Powerline ([vim-powerline](https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher) is patched.)

---

## Japanese Section (日本語)
**僕英語力中学生並みなので難しい英語書けないわからない.**

必要なライブラリ等はすべて`el-get`にて自動的にインストールされるはずですがもしかするとインストール出来ないかもしれません.そのような場合には面倒ですが`M-x el-get-update-all`を実行して必要なライブラリをすべてインストールするようにしてください.

問題発生時は`M-x init-loader-show-log`などを見て問題解決に役立ててください.

### 構成

```
├ ac-dict
├ elisp
├ inits
├ snippets
├ tests
└ themes
```

* ```ac-dict```には各言語用の辞書が入っています
* ```elisp```にはcaskで管理されない外部のEmacs Lispパッケージがあります.
* ```inits```は```init-loader```で読み込む設定があります
* ```snippets```はYasnippet用のスニペットです
* ```tests```はEmacs Lispのバイトコンパイル用のテストスクリプトなどが収められています
* ```themes```はEmacs用のテーマを格納しています
