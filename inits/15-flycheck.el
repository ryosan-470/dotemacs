;;; 15-flycheck.el --- Flycheck Config
;;; Commentary:
;;; Code:
;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
;;; keybind
(global-set-key (kbd "C-c p") 'flycheck-previous-error)
(global-set-key (kbd "C-c n") 'flycheck-next-error)
(global-set-key (kbd "C-c l") 'flycheck-list-errors)
;;; flycheck-pos-tip
(eval-after-load 'flycheck
  '(custom-set-variables
   '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

;; Hook
(add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'web-mode-hook    'flycheck-mode)
;;; 15-flycheck.el ends here
