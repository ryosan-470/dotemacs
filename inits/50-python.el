;;; 50-python.el --- For Python configuration
;;; Commentary:
;;; Code:
(add-hook 'python-mode-hook
          '(lambda ()
             (define-key python-mode-map (kbd "TAB") nil)))
(setq jedi:complete-on-dot t)
(setq jedi:use-shortcuts t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-to-list 'company-backend 'company-jedi)

(add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)
;;; 50-python.el ends here
