;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
;; Python
(add-hook 'python-mode-hook 'flycheck-mode)
