;; smartparensの設定
;; 括弧の自動補完
(smartparens-global-mode t)
(show-smartparens-global-mode t)
;; 括弧補完の定義
(sp-local-pair 'YaTeX-mode "$" "$")

;;; html-mode
(sp-with-modes '(html-mode sgml-mode)
  (sp-local-pair "<" ">"))
