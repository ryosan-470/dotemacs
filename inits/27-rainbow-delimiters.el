;;; 27-rainbow-delimiters.el --- カッコに対応して色付けする
;;; Commentary:
;;; Code:
(add-hook 'python-mode         'rainbow-delimiters-mode) ;; Python
(add-hook 'emacs-lisp-mode     'rainbow-delimiters-mode) ;; Emacs Lisp
(add-hook 'c-mode              'rainbow-delimiters-mode) ;; C
(add-hook 'java-mode           'rainbow-delimiters-mode) ;; Java
(add-hook 'shell-script-mode   'rainbow-delimiters-mode) ;; Shell
(add-hook 'tuareg-mode         'rainbow-delimiters-mode) ;; OCaml
;;; 27-rainbow-delimiters.el ends here
