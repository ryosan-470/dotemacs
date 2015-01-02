;;; 15-syntax-cheker.el --- Syntax Checker for Emacs using Flycheck
;;; Commentary:
;;; FlymakeはJavaのみに用いる.なお将来的に廃止の予定
;;; Code:
(use-package flycheck
  :commands global-flycheck-mode
  :init (global-flycheck-mode)
  :bind (("C-c p" . flycheck-previous-error)
         ("C-c n" . flycheck-next-error)
         ("C-c l" . flycheck-list-errors)
         ("C-c f" . flycheck-first-error))
  :config (progn
            (setq flycheck-check-syntax-automatically '(save mode-enabled))
            (setq flycheck-standard-error-navigation nil)
            ;; flycheck-pos-tip
            (when (display-graphic-p (selected-frame))
              (eval-after-load 'flycheck
                '(custom-set-variables
                  '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))))))
;;; 15-syntax-cheker.el ends here
