;; smartparensの設定
;; 括弧の自動補完
(require 'smartparens-config)
(smartparens-global-mode t)
;; 括弧補完の定義
(sp-pair "$" "$")

;;;;;;;;;;;;;;;;;;
;; pair management

(sp-local-pair 'minibuffer-inactive-mode "'" nil :actions nil)

;;; html-mode
(sp-with-modes '(html-mode sgml-mode)
  (sp-local-pair "<" ">"))
