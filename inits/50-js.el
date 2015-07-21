;;; 50-js.el --- JavaScript
;;; Commentary:
;;; Code:
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook 'ac-js2-mode)  ;; Autocomplete
;;; 50-js.el ends here
