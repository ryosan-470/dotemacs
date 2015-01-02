;;; 16-script-lang.el --- Emacs configulation for Script language, Python, Ruby, Perl!!
;;; Commentary:
;;; Code:
;;; For Python
(use-package python
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python3" . python-mode))

(use-package jedi
  :init
  (add-hook 'python-mode-hook 'jedi:setup)
  :config
  (setq jedi:complete-on-dot t))

;;; 16-script-lang.el ends here
