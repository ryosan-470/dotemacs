;;; 15-flycheck.el --- Syntax Checker for Emacs using Flycheck
;;; Commentary:
;;; Code:
(eval-after-load 'flycheck
  '(progn
     (global-flycheck-mode)
     (setq flycheck-check-syntax-automatically '(save mode-enabled))
     (setq flycheck-standard-error-navigation nil)
     ;; (require 'flycheck-pos-tip)
     ;; flycheck-pos-tip
     (when (display-graphic-p (selected-frame))
       (eval-after-load 'flycheck
         '(custom-set-variables
           '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))))))
;;; 15-flycheck.el ends here
