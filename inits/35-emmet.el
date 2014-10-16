;;; 35-emmet.el --- A fork of zencoding
;;; Commentary:
;;; Code:
(add-to-list 'auto-mode-alist '("\\.html?$"   . sgml-mode)) ;; htmlをsgmlで開くようにする
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
;;; indent はスペース2個
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))
;;; C-j は newline のままにしておく
(eval-after-load "emmet-mode" '(define-key emmet-mode-keymap (kbd "C-j") nil)) 

(add-hook 'emmet-mode-hook
          '(lambda ()
             (define-key emmet-mode-keymap (kbd "TAB") 'emmet-expand-line)))
;;; 35-zencoding.el ends here
