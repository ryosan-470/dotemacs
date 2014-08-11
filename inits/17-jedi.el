;;; 17-jedi.el --- Python Completation
;;; Commentary:
;;; Code:
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;;; 17-jedi.el ends here
