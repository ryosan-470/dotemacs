;;; 36-keycombo.el --- a fork of smartchr
;;; Commentary:
;;; 参考
;;; ソースコードを書いているときに "=" の前後にスペースを自動で挿入してくれる key-combo.el
;;; http://qiita.com/akisute3@github/items/0141c92dca0992732af8
;;; Code:
;;; (require 'key-combo)
(key-combo-mode)
(key-combo-load-default)

(key-combo-define-global (kbd "{") '("{`!!'}"))
(key-combo-define-global (kbd "{}") "{}")
;;; 36-keycombo.el ends here
