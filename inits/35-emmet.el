;;; 35-emmet.el --- A fork of zencoding
;;; Commentary:
;;; Code:
(require 'emmet-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'"  . sgml-mode))
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(define-key emmet-mode-keymap (kbd "TAB")  'emmet-expand-line)
;;; 35-emmet.el ends here
