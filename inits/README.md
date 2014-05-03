# インストールされている設定一覧 #
Emacsの設定は通常`init.el`または`.emacs.d`に追加していくものですが私の場合多すぎたので`init-loader.el`を使って分割しています.

ここでは各ファイルの設定内容を簡潔に記載しています

- - -

 * 00-keybind.el  キーバインドや外観の設定 詳細は中身を見て欲しい
 * 00-smartparens.el  カッコの自動補完 smartparensに変更した
 * 01-emacsclient.el  emacsclientの設定
 * 02-helm.el  emacs-helm
 * 10-autocomplete.el
 * 11-yasnippet.el
 * 12-autocompletejava.el
 * 13-yatex.el
 * 15-flycheck.el  flycheck **Javaには標準で非対応**
 * 15-flymake.el   flymakeの設定 Java
 * 16-shellcommand.el
 * 17-pythonmode.el
 * 19-markdown.el
 * 21-undotree.el  `C-x u`で今まで編集してきた履歴表示
 * 22-google-translate.el `C-x C-t`で選択領域を英語から日本語に翻訳する `C-x t`で翻訳画面
 * 23-recentf  `C-x r f`で最近開いたファイルを開く
 * 26-geeknote.el geeknoteをEmacsで使いやすくするための設定
 * 99-encoding.el  文字エンコーディングの設定

### 26-geeknote.el ###
GeeknoteをEmacsで用いる設定.現在はわかっている問題点は
 * emacsclientでは日本語が使えない
 * Emacs側で呼び出してもまともに動かない
 * しかしemacsであれば動く

とりあえず試しで使っている
