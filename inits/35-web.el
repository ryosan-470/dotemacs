;;; 35-emmet.el --- A fork of zencoding
;;; Commentary:
;;; Code:
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'php-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4))) ;; Indent 4 spaces
(eval-after-load 'emmet-mode
  '(progn
     (define-key emmet-mode-keymap (kbd "TAB")  'emmet-expand-line)))

(add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))
;; Web-mode
(setq web-mode-html-offset 4)
(setq web-mode-php-offset 4)

(add-hook 'php-mode-hook
  '(lambda()
     (setq tab-width 4)
     (setq indent-tabs-mode t)
     (setq c-basic-offset 4)
   ))
;;; 35-emmet.el ends here
