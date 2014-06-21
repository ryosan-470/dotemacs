# インストールされている設定一覧 #
Emacsの設定は通常`init.el`または`.emacs.d`に追加していくものですが私の場合多すぎたので`init-loader.el`を使って分割しています.

ここでは各ファイルの設定内容を簡潔に記載しています

- - -

 * 00-keybind.el  キーバインドや外観の設定 詳細は中身を見て欲しい
 * 00-package.el packageでインストールするものなどをぶち込んでいる
 * 01-emacsclient.el  emacsclientの設定
 * 02-helm.el  emacs-helm
 * 10-autocomplete.el
 * 11-yasnippet.el
 * 12-autocompletejava.el
 * 13-yatex.el
 * 14-smartparens.el  カッコの自動補完 smartparensに変更した
 * 15-flycheck.el  flycheck **Javaには標準で非対応**
 * 15-flymake.el   flymakeの設定 Java
 * 16-shellcommand.el
 * 17-pythonmode.el
 * 19-markdown.el
 * 21-undotree.el  `C-x u`で今まで編集してきた履歴表示
 * 22-google-translate.el `C-x C-t`で選択領域を英語から日本語に翻訳する `C-x t`で翻訳画面
 * 23-quickrun.el `C-c c`でプログラムを実行できる 
 * 25-recentf-ext.el
 * 26-geeknote.el geeknoteをEmacsで使いやすくするための設定
 * 27-rainbow-delimiters.el カッコを色付けして対応をわかりやすく
 * 28-visual-regexp.el 正規表現利用時にその適用語をハイライトする
 * 29-anzu.el 検索時に一致数を示す
 * 30-ace-jump-mode.el 指定した文字に飛ぶ
 * 31-cua-mode.el 短形選択モード
 * 32-mark-multiple.el 
 * 99-encoding.el  文字エンコーディングの設定

## 初めて導入する場合 ##
初めてこの設定をコンピュータに導入する場合このディレクトリ内の`.el`ファイルはすべてバイトコンパイルして使うことをおすすめします.

```
C-u 0 M-x byte-recompile-directory [RET] ~/.emacs.d/inits/
```

### 23-quickrun.el
Emacs上でプログラムを実行する.導入すると断然違うことに気づくはず.

 * `C-c c`  実行
 * `C-c a c` 引数を取り実行

### 26-geeknote.el ###
GeeknoteをEmacsで用いる設定.現在はわかっている問題点は
 * emacsclientでは日本語が使えない
 * Emacs側で呼び出してもまともに動かない
 * しかしemacsであれば動く

### 30-ace-jump-mode.el ###
指定の文字に飛ぶ機能.具体的には
 * `C-c SPC`で行頭
 * `C-c C-u SPC`で文字の中
っぽい.動作は使ってみないとなんとも言えない.

### 31-cua-mode.el
`C-x SPC`で短形選択モードに入る.具体的には以下のとおり
| キーバインド | 説明                                 |
|:------------:|:------------------------------------ |
| `M-p`        | 短形の幅を設定                       |
| `M-b`        | 空白文字で埋める                     |
| `M-s`        | 文字列で置換する                     |
| `M-f`        | 一種類の文字で埋める                 |
| `M-i`        | 短形領域内の数字をインクリメントする |
| `M-n`        | 短形領域を連番で埋める               |

正直良くわからん機能目一杯ある.

### 32-mark-multiple.el ###
