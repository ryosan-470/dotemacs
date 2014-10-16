;;; 20-webmode.el --- 
;;; Commentary:
;;; Code:
;;; 拡張子
(add-to-list 'auto-mode-alist '("\\.html?$"   . web-mode))
(setq web-mode-auto-pairs t)
;;; インデント
(defun web-mode-hook()
  "Hooks for web mode"
  (setq web-mode-markup-indent-offset 2) ;; html indent
  (setq web-mode-css-indent-offset 2)    ;; css indent
  (setq web-mode-code-indent-offset 2)   ;; script indent(js,php,etc..)
  (setq web-mode-enable-auto-pairing t)
  (setq indent-tabs-mode t)
  (setq tab-width 4))

(add-hook 'web-mode-hook 'web-mode-hook)
;;; 20-webmode.el ends here
