;;; 50-python.el --- For Python configuration
;;; Commentary:
;;; Code:
(add-hook 'python-mode-hook
          '(lambda ()
             (define-key python-mode-map (kbd "TAB") nil)))

(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:complete-on-dot t)

(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
;;; 50-python.el ends here
