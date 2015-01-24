;;; 14-smartparens.el --- カッコの自動補完
;;; Commentary:
;;; Code:
;; smartparensの設定
(smartparens-global-mode)
;; (show-smartparens-global-mode) ;; 重くなるので廃止
;; 括弧補完の定義
;; YaTeX
(sp-local-pair 'YaTeX-mode "$" "$")
(sp-local-pair 'YaTeX-mode "\{" "\}")

(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
(sp-local-pair 'markdown-mode "`" nil :actions '(insert))
;;; 14-smartparens.el ends here
