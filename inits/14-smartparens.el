;;; 14-smartparens.el --- カッコの自動補完
;;; Commentary:
;;; Code:
;; smartparensの設定
(smartparens-global-mode)
;; (show-smartparens-global-mode) ;; 重くなるので廃止
;; 括弧補完の定義
(sp-local-pair 'YaTeX-mode "$" "$")

;;; html-mode
(sp-with-modes '(html-mode sgml-mode)
  (sp-local-pair "<" ">"))

;;; 14-smartparens.el ends here
