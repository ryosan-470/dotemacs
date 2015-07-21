;;; 35-emmet.el --- A fork of zencoding
;;; Commentary:
;;; Code:
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4))) ;; Indent 2 spaces
(eval-after-load 'emmet-mode
  '(progn
     (define-key emmet-mode-keymap (kbd "TAB")  'emmet-expand-line)))
;;; 35-emmet.el ends here
