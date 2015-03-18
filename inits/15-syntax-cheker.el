;;; 15-syntax-cheker.el --- Syntax Checker for Emacs using Flycheck
;;; Commentary:
;;; FlymakeはJavaのみに用いる.なお将来的に廃止の予定
;;; Code:
(global-flycheck-mode)
;;; keybind
(define-key global-map (kbd "C-c p") 'flycheck-previous-error)
(define-key global-map (kbd "C-c n") 'flycheck-next-error)
(define-key global-map (kbd "C-c l") 'flycheck-list-errors)
(define-key global-map (kbd "C-c f") 'flycheck-first-error)

(setq flycheck-check-syntax-automatically '(save mode-enabled))
(setq flycheck-standard-error-navigation nil)
;; (require 'flycheck-pos-tip)
;; flycheck-pos-tip
(when (display-graphic-p (selected-frame))
  (eval-after-load 'flycheck
    '(custom-set-variables
      '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))))
;;; 15-syntax-cheker.el ends here
