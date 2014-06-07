;; smartparensの設定
;; 括弧の自動補完
(add-to-list 'load-path "~/.emacs.d/elisp/smartparens")
(require 'smartparens-config)
(smartparens-global-mode t)
(show-smartparens-global-mode t)
;; 括弧補完の定義
(sp-pair"$""$")

;;; html-mode
(sp-with-modes '(html-mode sgml-mode)
  (sp-local-pair "<" ">"))
