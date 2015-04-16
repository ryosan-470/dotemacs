;;; 37-lispxmp.el --- lispxmp
;;; Commentary:
;;; Code:
(autoload 'lispxmp "lispxmp" nil t)
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (define-key emacs-lisp-mode-map (kbd "C-c \C-d") 'lispxmp)))
;;; 37-lispxmp.el ends here
