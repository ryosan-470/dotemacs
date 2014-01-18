# インストールされている設定一覧 #
Emacsの設定は通常`init.el`または`.emacs.d`に追加していくものですが私の場合多すぎたので`init-loader.el`を使って分割しています.

ここでは各ファイルの設定内容を簡潔に記載しています

- - -

 * 00-keybind.el  キーバインドや外観の設定
 * 01-emacsclient.el  emacsclientの設定
 * 02-helm.el  emacs-helm
 * 10-autocomplete.el
 * 11-yasnippet.el
 * 12-autocompletejava.el
 * 13-yatex.el
 * 14-autopair.el  カッコの自動補完
 * 15-flycheck.el  flycheck **Javaには標準で非対応**
 * 15-flymake.el   flymakeの設定 Java
 * 16-shellcommand.el
 * 17-pythonmode.el
 * 19-markdown.el
 * 21-undotree.el  `C-x u`で今まで編集してきた履歴表示
 * 23-recentf  `C-x r f`で最近開いたファイルを開く
 * 40-arduino-mode.el  Arduino用スケッチのシンタックスハイライト
 * 99-encoding.el  文字エンコーディングの設定

